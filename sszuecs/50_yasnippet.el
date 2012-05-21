; textmate like tab completion with snippets
;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
;(require 'yasnippet) ;; not yasnippet-bundle
;(yas/initialize)
;(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet_szuecs")
(require 'yasnippet) ;; not yasnippet-bundle
(setq yas/snippet-dirs '("~/.emacs.d/plugins/yasnippet_szuecs/snippets"))
(yas/global-mode 1)
