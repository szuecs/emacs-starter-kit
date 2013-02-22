;; supports inline and internal css, Javascript, (x)html, erb, rhtml
(load (concat my-libs-dir "nxhtml-2.08/nxhtml/autostart.el"))

;; yasnippet can use text-mode/html-mode/ instead of /nxhtml-mode or /nxml-mode
(yas/define-snippets 'nxhtml-mode nil 'html5-mode)
