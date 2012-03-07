;;; global dev mode settings
;;; useful for each language

; save hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default show-trailing-whitespace t)

;;; auto completion
; load
(require 'auto-complete)
(global-auto-complete-mode nil)
; auto-complete mode customizations
(setq
      ac-auto-show-menu t
      ac-candidate-limit nil
      ac-delay 0.5
      ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
      ac-ignore-case 'smart
      ac-menu-height 10
      ac-quick-help-delay 1.5
      ac-quick-help-prefer-pos-tip t
      ac-use-quick-help nil
 )

