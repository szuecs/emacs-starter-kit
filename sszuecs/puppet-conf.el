;;; puppet-mode
(add-to-list 'load-path "~/emacs-libs/puppet")
(autoload 'puppet-mode "puppet-mode" "Puppet Mode." t)
(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))
(add-to-list 'interpreter-mode-alist '("puppet" . puppet-mode))
