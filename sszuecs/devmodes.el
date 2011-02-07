;;;; no ELPA for R and ECB
(add-to-list 'load-path "~/emacs-libs/ess")
(autoload 'ess-site "ess-site" "Emacs speaks statistics" t)
(setq inferior-R-program-name "/usr/local/bin/r")
;; FIXME you have to load ess-site and afterwards r-mode
; (add-to-list 'auto-mode-alist '("\\.r$" . r-mode))

;(autoload 'ecb "ecb-activate" "Emacs IDE" t)

;; perl mode
(add-hook 'cperl-mode-hook
          '(lambda ()
             (define-key cperl-mode-map "\C-cf" 'cperl-perldoc-at-point)
             (define-key cperl-mode-map "\C-cF" 'cperl-perldoc)))

;; css mode
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(autoload 'css-mode "css-mode" nil t)
