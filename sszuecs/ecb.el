;;;; no ELPA for ecb
;; ecb requires loaded cedet
;(add-to-list 'load-path "~/emacs-libs/cedet-1.0")
;(add-to-list 'load-path "~/emacs-libs/cedet-1.0/common")
;(add-to-list 'load-path "~/emacs-libs/cedet-1.0/speedbar")
;(add-to-list 'load-path "~/emacs-libs/cedet-1.0/eieio")
;(add-to-list 'load-path "~/emacs-libs/cedet-1.0/semantic")
;; load old cedet, because ecb-2.40 needs this version
;(load-file "~/emacs-libs/cedet-1.0/common/cedet.el")
;(load-file "~/emacs-libs/cedet-1.0/speedbar/speedbar.el")
;(load-file "~/emacs-libs/cedet-1.0/eieio/eieio.el")
;(load-file "~/emacs-libs/cedet-1.0/semantic/semantic.el")
;;  autoload <function> <filename> <doc> <interactive f|t|nil>
;(autoload 'cedet "cedet" "CEDET Mode" t)
;(autoload 'speedbar "speedbar" "Speedbar Mode" t)
;(autoload 'eieio "eieio" "Eieio Mode" t)
;(autoload 'semantic "semantic" "Semantic Mode" t)
;
;(semantic-load-enable-minimum-features)
;(semantic-load-enable-code-helpers)

;(add-to-list 'load-path "~/emacs-libs/ecb-2.40")

;;; emacs24 has cedet
(add-to-list 'load-path "~/emacs-libs/ecb")
(require 'ecb)
;(autoload 'ecb "ecb-activate" "Emacs IDE" t)
(setq ecb-tip-of-the-day nil)

