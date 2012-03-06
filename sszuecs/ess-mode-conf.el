;;;; ESS / R
; load
(add-to-list 'load-path "~/emacs-libs/ess/lisp")
(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
(require 'ess-site)
(add-to-list 'auto-mode-alist '("\\.r$" . r-mode))
(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
; config
(setq inferior-R-program-name "/usr/bin/R")
(setq inferior-R-args "-q")
;(setf inferior-R-args "--no-restore --no-save")
(setq ess-ask-for-ess-directory nil)
(setq ess-eval-visibly-p nil)
(setf ess-execute-in-process-buffer 1)
(setq ess-history-directory "~/.R/")
(setq ess-use-auto-complete t)
(R) ;start R in its own buffer

;;; load ess additional functions
; data inspection by tooltip within ess-buffer
(require 'ess-R-object-tooltip)
(define-key ess-mode-map (kbd "C-c C-g") 'ess-R-object-tooltip)

; ess-eldoc
; to show function arguments while you are typing them
;(require 'ess-eldoc)
;(setq ess-use-eldoc 'script-only)
; TODO call ess-r-d.el

;;; additional libs
; r auto yasnippet
(add-to-list 'load-path "~/emacs-libs/r-autoyas")
(require 'r-autoyas)

