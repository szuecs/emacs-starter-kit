;;;; no ELPA for R and ECB
(add-to-list 'load-path "~/emacs-libs/ess")
(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
(setq inferior-R-program-name "/usr/local/bin/r")
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
