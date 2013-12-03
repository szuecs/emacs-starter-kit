;; spellchecker
;(require 'auto-dictionary)
;(add-hook 'flyspell-mode-hook '(lambda () (auto-dictionary-mode 1)))
(setq flyspell-issue-message-flag nil)

; cycle languages on <f8>
(let ((langs '("en" "de" )))
  (setq lang-ring (make-ring (length langs)))
  (dolist (elem langs) (ring-insert lang-ring elem)))
(defun cycle-ispell-languages ()
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
(global-set-key [f8] 'cycle-ispell-languages)

; disable flyspell-mode
(setq flyspell-mode nil)
