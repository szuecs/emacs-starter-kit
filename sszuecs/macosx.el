(defvar is-darwin (string-equal system-type "darwin"))

; Best option in Emacs 23 is to revert to Emacs 22 settings 
; (alt is alt, cmd is meta) with this snippet:
(unless (not is-darwin)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
)
