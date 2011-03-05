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

;; css mode - moved to mmm
;(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
;(autoload 'css-mode "css-mode" nil t)

;; auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; puppet-mode
(add-to-list 'load-path "~/emacs-libs/puppet")
(load-file "~/emacs-libs/puppet/puppet-mode-init.el")

;; mmm-mode for erb-templates
;(add-to-list 'load-path "~/emacs-libs/mmm-mode-0.4.8")
;(require 'mmm-mode)
;(setq mmm-global-mode 'maybe)
;(require 'mmm-sample)

; (require 'rinari)
; (add-to-list 'load-path "~/emacs-libs/rhtml")
; (require 'rhtml-mode)
;      (add-hook 'rhtml-mode-hook
;               (lambda () (rinari-launch)))
; (setq ruby-electric-mode t)
;(setq ri-mode t)
