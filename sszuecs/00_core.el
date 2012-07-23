;; set config variables
(defvar my-libs-dir "~/emacs-libs/"
  "Directory for elisp libraries without elpa")
(defvar my-config-dir "~/.emacs.d/sszuecs/"
  "Directory for elisp config files")
(defvar my-orgfile-dir "~/org/"
  "Directory for *.org files")
(defvar my-plugin-dir "~/.emacs.d/plugins/"
  "Directory for plugins")

; prefer utf8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; PATH
(push "/usr/local/bin" exec-path)

; fuzzy matching within minibuffer
(require 'ido)
(setq ido-enable-flex-matching t)

; tramp
(setq tramp-default-method "ssh")
