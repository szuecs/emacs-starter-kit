;; Start emacs server. Use `emacsclient -t'.
(server-start)

;; spellchecker 
(require 'auto-dictionary)
(add-hook 'flyspell-mode-hook '(lambda () (auto-dictionary-mode 1)))

