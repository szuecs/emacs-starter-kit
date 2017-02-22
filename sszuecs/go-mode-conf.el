;;; go-mode-conf --- this configures go-mode
;;; Commentary:

;;; Code:
; add to $PATH
;(setenv "PATH" (concat (getenv "PATH") ":/usr/lib/go/bin:/usr/local/go/bin:/home/sszuecs/go/bin"))
;(push "/usr/lib/go/bin" exec-path)
;(push "/usr/local/go/bin" exec-path)
;;; set ENV
(setenv "GOPATH" (concat (getenv "HOME") "/go"))
(setenv "GOBIN" (concat (getenv "GOPATH") "/bin"))
(setenv "PATH" (concat (getenv "PATH")
    ":" (getenv "GOBIN")
    ":" (getenv "GOROOT") "/bin"
    ))
(push (getenv "GOBIN") exec-path)
(push (concat (getenv "GOROOT") "/bin") exec-path)

(add-to-list 'load-path (concat my-libs-dir "go-mode"))
(require 'go-mode)

;; gotests https://github.com/tcnksm/gotests/
(load-file (concat (getenv "GOPATH") "/src/github.com/tcnksm/gotests/editor/emacs/gotests.el"))
;; golint
(add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/golang/lint/misc/emacs"))
(require 'golint)

;; go eldoc
(add-to-list 'load-path (concat my-libs-dir "go-eldoc"))
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "forestgreen"
                    :weight 'bold)

;; autocomplete
; export GOROOT=/usr/lib/go
; export GOPATH=$HOME/go
; export GOBIN=$GOPATH/bin
; PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
; % go get -u -v github.com/nsf/gocode
; % go install github.com/nsf/gocode
(add-to-list 'load-path (concat my-libs-dir "gocode"))
(require 'go-autocomplete)
(require 'auto-complete-config)

;; refactoring using gofmt
(require 'thingatpt)
(defgroup go-rename nil
  "Options specific to the Go rename."
  :group 'go)
(defcustom go-rename-command "gorename"
  "The `gorename' command; by the default, $PATH is searched."
  :type 'string
  :group 'go-rename)
(defun go-rename (new-name &optional force)
  "Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag."
  (interactive (list (read-string "New name: " (thing-at-point 'symbol))
                     current-prefix-arg))
  (if (not buffer-file-name)
      (error "Cannot use go-rename on a buffer without a file name"))
  ;; It's not sufficient to save the current buffer if modified,
  ;; since if gofmt-before-save is on the before-save-hook,
  ;; saving will disturb the selected region.
  (if (buffer-modified-p)
      (error "Please save the current buffer before invoking go-rename"))
  ;; Prompt-save all other modified Go buffers, since they might get written.
  (save-some-buffers nil #'(lambda ()
                             (and (buffer-file-name)
                                  (string= (file-name-extension (buffer-file-name)) ".go"))))
  (let* ((posflag (format "-offset=%s:#%d"
                          buffer-file-name
                          (1- (go--position-bytes (point)))))
         (env-vars (go-root-and-paths))
         (goroot-env (concat "GOROOT=" (car env-vars)))
         (gopath-env (concat "GOPATH=" (mapconcat #'identity (cdr env-vars) ":")))
         success)
    (with-current-buffer (get-buffer-create "*go-rename*")
      (setq buffer-read-only nil)
      (erase-buffer)
      (let ((args (append (list go-rename-command nil t nil posflag "-to" new-name) (if force '("-force")))))
        ;; Log the command to *Messages*, for debugging.
        (message "Command: %s:" args)
        (message "Running gorename...")
        ;; Use dynamic binding to modify/restore the environment
        (setq success (zerop (let ((process-environment (list* goroot-env gopath-env process-environment)))
                               (apply #'call-process args))))
        (insert "\n")
        (compilation-mode)
        (setq compilation-error-screen-columns nil)
        ;; On success, print the one-line result in the message bar,
        ;; and hide the *go-rename* buffer.
        (let ((w (display-buffer (current-buffer))))
          (if success
              (progn
                (message "%s" (go--buffer-string-no-trailing-space))
                (delete-window w))
            ;; failure
            (message "gorename exited")
            (shrink-window-if-larger-than-buffer w)
            (set-window-point w (point-min)))))))
  ;; Reload the modified files, saving line/col.
  ;; (Don't restore the point since the text has changed.)
  ;;
  ;; TODO(adonovan): should we also do this for all other files
  ;; that were updated (the tool can print them)?
  (let ((line (line-number-at-pos))
        (col (current-column)))
    (revert-buffer t t t) ; safe, because we just saved it
    (goto-char (point-min))
    (forward-line (1- line))
    (forward-char col)))
(defun go--buffer-string-no-trailing-space ()
  (replace-regexp-in-string "[\t\n ]*\\'"
                            ""
                            (buffer-substring (point-min) (point-max))))


; set scope for oracle to current project
;(defun set-oracle-scope-for-go-project ()
;  (interactive)
;  (let (
;        (local-list (split-string
;               (substring buffer-file-name
;                          (+ 5 (length (getenv "GOPATH")))
;                          (length buffer-file-name))
;               "/") )
;        (local-sublist-a (car local-list))
;        (local-sublist-b (car (cdr local-list)))
;        (local-sublist-c (car (cdr (cdr local-list ))))
;        )
;    (setq go-oracle-scope
;          (mapconcat 'identity (list local-sublist-a local-sublist-b local-sublist-c) "/")
;          )
;    (message (concat "set scope to project: " go-oracle-scope))
;    )
;  )

;; while browsing src code, I get in never ending hot compile loops,
;; because of errcheck, so disable it if requested
(defun disable-flycheck-errcheck ()
  (interactive)
  (flycheck-disable-checker 'go-errcheck)
  )

(defun my-go-mode-hook ()
  ; Use goimports instead of gofmt
  (setq gofmt-command "goimports")

  ;; disable flycheck plugin go-errcheck
  (local-set-key (kbd "<f4>") 'disable-flycheck-errcheck)

  ;; use gofmt - should be in $PATH
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; golint - run golint on current buffer - C-c C-l
  (local-set-key (kbd "C-c C-l") 'golint)
  ;; gotests - autogenerated test stups - C-c C-t
  (local-set-key (kbd "C-c C-t") 'gotests)
  ;; godoc to C-h
  (local-set-key (kbd "C-h") 'godoc)
  ;; remove unsed imports
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  ; Customize compile command to run go build
  ; jump to next build failure: C-x `
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ;; use godef - should be in $PATH
  ; M-. jump to declaration
  ; M-* jump back
  (local-set-key (kbd "M-.") 'godef-jump)
  ; go-guru replaces oracle
  (require 'go-guru)
  (go-guru-hl-identifier-mode)
  ;; C-c C-o i ; implements
  ;; C-c C-o < ; callers
  ;; C-c C-o > ; callees
  ;; C-c C-o s ; callstack
  ;; C-c C-o c ; find peer channels
  ; FIXME: set scope for guru
  ;(local-set-key (kbd "C-c C-o C-s") 'set-oracle-scope-for-go-project)
  ;; C-c C-o C-s ; set oracle scope to current open files
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)
