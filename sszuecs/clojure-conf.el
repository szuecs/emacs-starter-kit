(add-to-list 'load-path "~/emacs-libs/clojure-mode/")
(add-to-list 'load-path "~/emacs-libs/nrepl")
(add-to-list 'load-path "~/emacs-libs/rainbow-delimiters/")
(require 'clojure-mode)
(require 'nrepl)
(require 'rainbow-delimiters)

(add-hook 'clojure-mode-hook 'eldoc-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'nrepl-interaction-mode)

; get syntax highlighting in your repl buffer
(add-hook 'slime-repl-mode-hook
          (defun clojure-mode-slime-font-lock ()
            (require 'clojure-mode)
            (let (font-lock-mode)
              (clojure-mode-font-lock-setup))))


;;;;; nrepl config ;;;;;;
(add-hook 'nrepl-interaction-mode-hook
          'nrepl-turn-on-eldoc-mode)

;; hide connection buffers
(setq nrepl-hide-special-buffers t)

(setq nrepl-tab-command 'nrepl-indent-and-complete-symbol)

(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)

;; C-c C-z switch to nrepl buffer
(add-to-list 'same-window-buffer-names "*nrepl*")

;; enable CamelCase support for forward-word, backward-word, ..
(add-hook 'nrepl-mode-hook 'subword-mode)

(add-hook 'nrepl-mode-hook 'paredit-mode)

; https://github.com/jlr/rainbow-delimiters
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)

;; call that after starting % lein nrepl
;(nrepl-jack-in)

;;;;; ritz ;;;;;;;
; ritz: https://github.com/pallet/ritz
