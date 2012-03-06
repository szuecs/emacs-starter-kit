;; conf-mode
(add-hook 'conf-mode-hook
    #'(lambda ()
            (setq yas/mode-symbol 'conf-mode)))
