;;;; no ELPA for R and ECB
(add-to-list 'load-path "~/emacs-libs/ess")
(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
(setq inferior-R-program-name "/usr/local/bin/r")
;; FIXME you have to load ess-site and afterwards r-mode
; (add-to-list 'auto-mode-alist '("\\.r$" . r-mode))

;;;; no ELPA for ecb 
; ecb requires loaded cedet
(add-to-list 'load-path "~/emacs-libs/cedet-1.0")
(load-file "~/emacs-libs/cedet-1.0/common/cedet.el")
(load-file "~/emacs-libs/cedet-1.0/speedbar/speedbar.el")
(load-file "~/emacs-libs/cedet-1.0/eieio/eieio.el")
(load-file "~/emacs-libs/cedet-1.0/semantic/semantic.el")

(add-to-list 'load-path "~/emacs-libs/ecb-2.40")
;(require 'ecb)
(require 'ecb-autoloads)
(autoload 'ecb "ecb-activate" "Emacs IDE" t)

;; perl mode
(add-hook 'cperl-mode-hook
          '(lambda ()
             (define-key cperl-mode-map "\C-cf" 'cperl-perldoc-at-point)
             (define-key cperl-mode-map "\C-cF" 'cperl-perldoc)))

;; css mode
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(autoload 'css-mode "css-mode" nil t)

;; auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; puppet-mode
(add-to-list 'load-path "~/emacs-libs/puppet")
(load-file "~/emacs-libs/puppet/puppet-mode-init.el")
