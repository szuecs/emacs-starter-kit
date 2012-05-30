;; auctex
;; http://emacswiki.org/emacs/AUCTeX
(setq TeX-auto-save t)
(setq TeX-save-query nil)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t) ; use pdflatex

;(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'auto-complete-mode)

;; reftex
;; http://emacswiki.org/emacs/RefTeX
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq-default TeX-master nil)
;; auto-complete

; ac-math
(add-to-list 'load-path (concat my-libs-dir "ac-math"))
(require 'ac-math)
(add-to-list 'ac-modes 'LaTeX-mode)
(defun ac-latex-mode-setup ()
  (setq ac-sources
    (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
      ac-sources)))
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
(ac-flyspell-workaround)
(setq ac-math-unicode-in-math-p t) ; force unicode
;; speedup completion
(defun ac-latex-mode-setup ()
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-latex-commands)
             ac-sources)))
