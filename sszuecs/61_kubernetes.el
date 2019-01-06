;; Src: https://github.com/TxGVNN/emacs-k8s-mode
(require 'k8s-mode)
(add-hook 'k8s-mode-hook 'yas-minor-mode)

;; (eval-after-load 'k8s-mode
;;   '(add-hook '(local-set-key (kbd "C-h") 'k8s-goto-documents)))

(defun k8s-mode-hook-conf ()
  "Hook to configure the k8s-mode."
  (message "my k8s-mode conf")
  (local-set-key (kbd "C-h") 'k8s-goto-documents))

(add-hook 'k8s-mode-hook 'k8s-mode-hook-conf)

;; Set indent offset
(setq k8s-indent-offset nil)

;; The site docs URL
(setq k8s-site-docs-url "https://kubernetes.io/docs/reference/generated/kubernetes-api/")

;; The defautl API version
(setq k8s-site-docs-version "v1.11")

;; The browser funtion to browse the docs site. Default is `browse-url-browser-function`
;(setq k8s-search-documentation-browser-function nil)
; Should be a X11 browser
(setq k8s-search-documentation-browser-function (quote browse-url-firefox))
