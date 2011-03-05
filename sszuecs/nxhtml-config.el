(load (concat my-libs-dir "nxhtml-2.08/nxhtml/autostart.el"))
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))
; erzeugt andere obskure Fehler:
;(load-file "~/emacs-libs/nxhtml-2.08/nxhtml/nxhtml/nxhtml-mumamo.el")
