; save hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default show-trailing-whitespace t)

; ESS / R
(add-to-list 'load-path "~/emacs-libs/ess")
(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
(setq inferior-R-program-name "/usr/bin/R")
(setq ess-eval-visibly-p nil) ;otherwise C-c C-r (eval region) takes forever
(setq ess-ask-for-ess-directory nil) ;otherwise you are prompted each time you start an interactive R session
(require 'ess-eldoc) ;to show function arguments while you are typing them

(add-to-list 'load-path "~/emacs-libs/r-autoyas")
(require 'r-autoyas)


;; FIXME you have to load ess-site and afterwards r-mode
; (add-to-list 'auto-mode-alist '("\\.r$" . r-mode))

;; perl mode
(add-hook 'cperl-mode-hook
          '(lambda ()
             (define-key cperl-mode-map "\C-cf" 'cperl-perldoc-at-point)
             (define-key cperl-mode-map "\C-cF" 'cperl-perldoc)))
(setq cperl-electric-keywords t)
(setq cperl-hairy t)

;; auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; puppet-mode
(add-to-list 'load-path "~/emacs-libs/puppet")
(autoload 'puppet-mode "puppet-mode" "Puppet Mode." t)
(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))
(add-to-list 'interpreter-mode-alist '("puppet" . puppet-mode))

;; rspec
(add-hook 'rspec-mode-hook
    #'(lambda ()
            (setq yas/mode-symbol 'rspec-mode)))

;; conf-mode
(add-hook 'conf-mode-hook
    #'(lambda ()
            (setq yas/mode-symbol 'conf-mode)))
