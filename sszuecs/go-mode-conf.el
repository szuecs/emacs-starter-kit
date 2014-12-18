(add-to-list 'load-path (concat my-libs-dir "go-mode"))
(require 'go-mode)

; add to $PATH
(push "/usr/lib/go/bin" exec-path)
(push "/home/sszuecs/go/bin" exec-path)

;; use godoc - should be in $PATH
; M-x godoc

;; godef
; evtl muss man das installieren, aber unklar, da /usr/lib/go/bin zu $PATH hinzugefügt werden mußte
; % go get code.google.com/p/rog-go/exp/cmd/godef

;; go eldoc
(add-to-list 'load-path (concat my-libs-dir "go-eldoc"))
(require 'go-eldoc)

;; autocomplete
;; FIXME: works not correctly
; export GOROOT=/usr/lib/go
; export GOPATH=$HOME/go
; PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
; % go get -u -v github.com/nsf/gocode
; % cd ~/go/src/github.com/nsf/gocode
; % git checkout -f c6fa1a4f10162678ede2596465159f87c7369922
; % go build
; % mv gocode ~/go/bin/
;(add-to-list 'load-path (concat my-libs-dir "gocode"))
;(require 'go-autocomplete)
;(require 'auto-complete-config)

(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)

(defun my-go-mode-hook ()
  ;; use gofmt - should be in $PATH
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
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
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)
