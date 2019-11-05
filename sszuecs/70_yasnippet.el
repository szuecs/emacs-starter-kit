; textmate like tab completion with snippets

; https://github.com/joaotavora/yasnippet/blob/master/README.mdown#installation
(add-to-list 'load-path "~/emacs-libs/yasnippet")

(setq yas-snippet-dirs
      '(
        "~/.emacs.d/plugins/yasnippet_szuecs/snippets"
        ))

(require 'yasnippet)
(yas-global-mode 1)
(add-to-list 'ac-sources 'ac-source-yasnippet)
