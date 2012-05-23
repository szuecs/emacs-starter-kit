; textmate like tab completion with snippets
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet_szuecs")
(require 'yasnippet)
(setq yas/snippet-dirs '("~/.emacs.d/plugins/yasnippet_szuecs/snippets"))
(yas/global-mode 1)
(add-to-list 'ac-sources 'ac-source-yasnippet)
