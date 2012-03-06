;; perl mode
(add-hook 'cperl-mode-hook
          '(lambda ()
             (define-key cperl-mode-map "\C-cf" 'cperl-perldoc-at-point)
             (define-key cperl-mode-map "\C-cF" 'cperl-perldoc)))
(setq cperl-electric-keywords t)
(setq cperl-hairy t)

