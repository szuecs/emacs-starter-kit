;; Start emacs server. Use `emacsclient -t'.
(server-start)

;; spellchecker 
(require 'auto-dictionary)
(add-hook 'flyspell-mode-hook '(lambda () (auto-dictionary-mode 1)))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; Best option in Emacs 23 is to revert to Emacs 22 settings (alt is alt, cmd is meta) with this snippet:
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;;; alarm is useful for appt, but should not annoy me!
(setq visible-bell t)
;; don't beep on isearch,..
(setq ring-bell-function 
   (lambda ()
      (unless (memq this-command
         '(isearch-abort abort-recursive-edit exit-minibuffer keyboard-quit))
            ;(or 
              (ding)
              ;(call-process "say" nil 0 nil "remind me")
            ;)
      )))

; execute shell programm for audio
;(setq ring-bell-function (lambda ()
  ;(call-process "/usr/local/bin/ogg123" nil 0 nil "-q ~/.emacs.d/sszuecs/sounds/oggNone.ogg")))
;  (call-process "say" nil 0 nil 
;                "remind me")))

; alarm is only active from 8:00 - 22:00
 (defvar night-start 22 "The hour that people go to sleep.")
 (defvar night-end    8 "The hour that people wake up.")
 (defun nightp ()
       "Check if it is night."
       (let ((hr (nth 2 (decode-time (current-time)))))
         (or (< hr night-end)
         (> hr night-start))))    

