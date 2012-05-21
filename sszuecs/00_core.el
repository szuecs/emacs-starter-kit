;; set config variables
(defvar my-libs-dir "~/emacs-libs/"
  "Directory for elisp libraries without elpa")
(defvar my-config-dir "~/.emacs.d/sszuecs/"
  "Directory for elisp config files")
(defvar my-orgfile-dir "~/org/"
  "Directory for *.org files")

; prefer utf8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; fuzzy matching within minibuffer
(require 'ido)
(setq ido-enable-flex-matching t)
