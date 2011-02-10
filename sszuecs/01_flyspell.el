;; spellchecker 
(require 'auto-dictionary)
(add-hook 'flyspell-mode-hook '(lambda () (auto-dictionary-mode 1)))

;(setq flyspell-mouse-map
;      (let ((map (make-sparse-keymap)))
;        (define-key map [down-mouse-3] #'flyspell-correct-word)
;        map))

