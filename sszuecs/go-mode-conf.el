;;; go-mode-conf --- this configures go-mode
;;; Commentary:

;;; Code:
; add to $PATH
;(setenv "PATH" (concat (getenv "PATH") ":/usr/lib/go/bin:/usr/local/go/bin:/home/sszuecs/go/bin"))
;(push "/usr/lib/go/bin" exec-path)
;(push "/usr/local/go/bin" exec-path)
;;; set ENV
(setenv "GO111MODULE" "on")
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
; C-c C-f d ; jumpto and add docstring
; C-c C-f f ; jumpto function

;; go eldoc
(add-to-list 'load-path (concat my-libs-dir "go-eldoc"))
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "forestgreen"
                    :weight 'bold)

;; test lsp-mode
;; installed lsp-mode lsp-ui lsp-go via melpa
;(require 'lsp-mode)
;(add-hook 'go-mode-hook #'lsp)
;(require 'lsp-ui)
;(add-hook 'lsp-mode-hook 'lsp-ui-mode)
;(add-hook 'go-mode-hook 'flycheck-mode)
;(lsp-register-client
;   (make-lsp-client :new-connection (lsp-stdio-connection "gopls")
;                    :major-modes '(go-mode)
;                    :server-id 'gopls))

;; autocomplete
; export GOROOT=/usr/lib/go
; export GOPATH=$HOME/go
; export GOBIN=$GOPATH/bin
; PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
; % go get -u github.com/mdempsky/gocode
(add-to-list 'load-path (concat my-libs-dir "gocode"))
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

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
  "Rename the entity denoted by the identifier at point to NEW-NAME.  It will use the `gorename' tool.  With FORCE, call `gorename' with the `-force' flag."
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



(defun sz/go-run-coverage-test-for-package ()
  "Opens coverage output in a separate buffer."
  (interactive)
  (compile "go test -cover -coverprofile=c.out")
  (go-coverage "c.out")
  )

; set scope for guru to current project
(defun set-guru-scope-for-go-project ()
  "Set the guru scope for your project."
 (interactive)
 (let* (
       (local-list (split-string
              (substring buffer-file-name
                         (+ 5 (length (getenv "GOPATH"))) ; 5 bc "/src/"
                         (length buffer-file-name))
              "/"))
       (local-sublist-a (car local-list))
       (local-sublist-b (car (cdr local-list)))
       (local-sublist-c (car (cdr (cdr local-list ))))
       (scope (mapconcat 'identity (list local-sublist-a local-sublist-b local-sublist-c) "/"))
       )
   (setq go-guru-set-scope scope)
   (message (concat "set scope to project: " go-guru-set-scope))
   )
 )

(defun my-go-mode-hook ()
  "Hook to configure the go-mode."
  ; Use goimports instead of gofmt
  (setq gofmt-command "goimports")
  ;; use gofmt - should be in $PATH
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  ;; flycheck golangci integration
  ;; install: M-x package-install flycheck-golangci-lint
  ;; - https://github.com/golangci/golangci-lint
  ;; - https://github.com/weijiangan/flycheck-golangci-lint
  (add-hook 'flycheck-mode-hook #'flycheck-golangci-lint-setup)
  (setq flycheck-golangci-lint-config (concat (getenv "HOME") "/.golangci.yml"))
  (setq flycheck-golangci-lint-deadline "30s")
  ;; (setq flycheck-golangci-lint-tests t)
  ;; (setq flycheck-golangci-lint-fast t)

  ;; modify tags - C-c t
  ;; go-modify-tags integration
  ;; use melpa to install go-add-tags and dependencies
  (local-set-key (kbd "C-c t") 'go-add-tags)

  ;; gotests - autogenerated test stups - C-c C-t
  ;; https://github.com/cweill/gotests
  ;; % go get -u github.com/cweill/gotests/...
  ;; https://github.com/s-kostyaev/go-gen-test
  ;; use melpa to install go-gen-test
  ;; go-gen-test-all go-gen-test-exported or go-gen-test-dwim (region)
  (local-set-key (kbd "C-c C-t") 'go-gen-test-exported)

  ;; run coverage tests
  (local-set-key (kbd "C-c C-c") 'sz/go-run-coverage-test-for-package)

  ;; godoc to C-h
  (local-set-key (kbd "C-h") 'godoc)

  ;; remove unsed imports
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)

  ;; Customize compile command to run go build
  ;; jump to next build failure: C-x `
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))

  ; go-guru replaces oracle
  (require 'go-guru)
  (go-guru-hl-identifier-mode)
  ;; C-c C-o i ; implements
  ;; C-c C-o < ; callers
  ;; C-c C-o > ; callees
  ;; C-c C-o s ; callstack
  ;; C-c C-o c ; find peer channels
  ; FIXME: set scope for guru
  ;; C-c C-o C-s ; set go-guru scope to current open files
  (local-set-key (kbd "C-c C-o C-s") 'set-guru-scope-for-go-project)

  ;; use godef - should be in $PATH
  ; M-. jump to declaration
  ;(local-set-key (kbd "M-.") 'go-guru-definition)
  (local-set-key (kbd "M-.") 'godef-jump)
  ; M-* jump back
  (local-set-key (kbd "M-*") 'pop-tag-mark)

  )
(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'go-mode-conf)
;;; go-mode-conf.el ends here
