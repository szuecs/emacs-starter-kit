;; open the files designated by emacsclient in their own frame
;(add-hook 'server-switch-hook
;              (lambda nil
;                (let ((server-buf (current-buffer)))
;                  (bury-buffer)
;                  (switch-to-buffer-other-frame server-buf))))
;; Start emacs server. Use `emacsclient -t'.
;(server-start)

;; set config variables
(defvar my-libs-dir "~/emacs-libs/"
  "Directory for elisp libraries without elpa")
(defvar my-config-dir "~/.emacs.d/sszuecs/"
  "Directory for elisp config files")

; prefer utf8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; fuzzy matching within minibuffer
;(require 'ido)
;(setq ido-enable-flex-matching t)

; showing line-numbers on the left - CPU load 100%
;(require 'linum-off)
;(global-linum-mode 1)
