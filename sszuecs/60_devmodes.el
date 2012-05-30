;;; global dev mode settings
;;; useful for each language

(add-to-list 'load-path "~/emacs-libs/expand-region")
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

; save hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default show-trailing-whitespace t)

;;; auto completion
(add-to-list 'load-path "~/emacs-libs/popup")
(add-to-list 'load-path "~/emacs-libs/auto-complete")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode nil)
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
      ; Start auto-completion after 2 characters of a word
      ac-auto-start 2
      ; case sensitivity is important when finding matches
      ac-ignore-case nil
)

(add-hook 'c-mode-common-hook '(lambda ()
          ;; ac-omni-completion-sources is made buffer local so
          ;; you need to add it to a mode hook to activate on
          ;; whatever buffer you want to use it with.  This
          ;; example uses C mode (as you probably surmised).

          ;; auto-complete.el expects ac-omni-completion-sources to be
          ;; a list of cons cells where each cell's car is a regex
          ;; that describes the syntactical bits you want AutoComplete
          ;; to be aware of. The cdr of each cell is the source that will
          ;; supply the completion data.  The following tells autocomplete
          ;; to begin completion when you type in a . or a ->

          (add-to-list 'ac-omni-completion-sources
                       (cons "\\." '(ac-source-semantic)))
          (add-to-list 'ac-omni-completion-sources
                       (cons "->" '(ac-source-semantic)))

          ;; ac-sources was also made buffer local in new versions of
          ;; autocomplete.  In my case, I want AutoComplete to use
          ;; semantic and yasnippet (order matters, if reversed snippets
          ;; will appear before semantic tag completions).

          (setq ac-sources '(ac-source-semantic ac-source-yasnippet))
  ))
