(setq visible-bell t)

;; don't beep on isearch,..
(setq ring-bell-function
   (lambda ()
      (unless (memq this-command
         '(isearch-abort abort-recursive-edit exit-minibuffer keyboard-quit))
              (ding)
      )))

; execute shell programm for audio
;(setq ring-bell-function (lambda ()
;  (call-process "/usr/local/bin/ogg123" nil 0 nil "-q ~/.emacs.d/sszuecs/sounds/oggNone.ogg")))
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

