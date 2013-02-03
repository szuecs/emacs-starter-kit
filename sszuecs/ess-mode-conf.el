;;;; ESS / R
; load
(load "~/emacs-libs/ess/lisp/ess-site.el")
;(add-to-list 'load-path "~/emacs-libs/ess/lisp")
;(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
;(add-to-list 'auto-mode-alist '("\\.r$" . r-mode))
;(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
; config
(setq inferior-R-program-name "/usr/bin/R")
(setq inferior-R-args "-q")
;(setf inferior-R-args "--no-restore --no-save")
(setq ess-ask-for-ess-directory nil)
(setq ess-eval-visibly-p nil)
(setf ess-execute-in-process-buffer 1)
(setq ess-history-directory "~/.R/")
(setq ess-use-auto-complete t)

;; TODO: should look if we have a child process or buffer R
(defvar *is-running-r* nil)
(defun run-r-if-not-running ()
   (if *is-running-r*
          (message "R console is running already - nothing todo")
       (setf *is-running-r* t)
       (R)
       ))

(add-hook 'ess-mode-hook 'run-r-if-not-running)

;;; load ess additional functions
; r debugger
(require 'ess-tracebug)
(add-hook 'ess-post-run-hook 'ess-tracebug t)
(define-key ess-mode-map "\M-]" 'next-error)
(define-key ess-mode-map "\M-[" 'previous-error)
(define-key inferior-ess-mode-map "\M-]" 'next-error-no-select)
(define-key inferior-ess-mode-map "\M-[" 'previous-error-no-select)
(define-key compilation-minor-mode-map [(?n)] 'next-error-no-select)
(define-key compilation-minor-mode-map [(?p)] 'previous-error-no-select)

;data inspection by tooltip within ess-buffer
(add-to-list 'load-path "~/emacs-libs/ess-R-object-tooltip")
;(autoload 'ess-R-object-tooltip "ess-R-object-tooltip" "ess R tooltips" t)
(require 'ess-R-object-tooltip)
;(define-key ess-mode-map (kbd "C-c C-g") 'ess-R-object-tooltip)

; ess-eldoc
; to show function arguments while you are typing them
;(require 'ess-eldoc)
;(setq ess-use-eldoc 'script-only)
; TODO call ess-r-d.el

;;; additional libs
; r auto yasnippet
(add-to-list 'load-path "~/emacs-libs/r-autoyas")
(require 'r-autoyas)

