;; Start emacs server. Use `emacsclient -t'.
(server-start)

; prefer utf8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; fuzzy matching within minibuffer
(require 'ido)
(setq ido-enable-flex-matching t)

