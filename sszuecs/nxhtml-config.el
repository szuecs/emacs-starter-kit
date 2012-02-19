;; supports inline and internal css, Javascript, (x)html, erb, rhtml
(load (concat my-libs-dir "nxhtml-2.08/nxhtml/autostart.el"))

; TODO nxhtml should be autoloaded so that booting emacs is fast
;(add-to-list 'load-path "~/emacs-libs/nxhtml-2.08/nxhtml")
;(autoload 'nxhtml "autostart" "nxhtml mode" t)

; use yasnippet
(yas/define-snippets 'nxhtml-mode nil 'html-mode)
