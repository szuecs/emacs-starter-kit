(add-to-list 'load-path (concat my-libs-dir "dockerfile-mode"))
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
