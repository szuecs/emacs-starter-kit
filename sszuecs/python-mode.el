;
; easy_install rope
; easy_install ropemode
; easy_install ropemacs # did not work
; hg clone http://bitbucket.org/agr/ropemacs
; cd ropemacs && python setup.py install
; git clone https://github.com/pinard/Pymacs.git
;   make
;   ~/emacs-libs/Pymacs]% python setup.py install
;
(setq load-path
      (append (list nil
                    "~/emacs-libs/Pymacs/"
                    ;"~/emacs-libs/ipython/"
                    ;"~/emacs-libs/python-mode-1.0/"
                    )
              load-path))

(require 'auto-complete)
;(global-auto-complete-mode t)

; (require 'ipython)
; (require 'anything-ipython)
; (add-hook 'python-mode-hook #'(lambda ()
;                                 (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))
; (add-hook 'ipython-shell-hook #'(lambda ()
;                                   (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))

; memory leak?
(defadvice py-execute-buffer (around python-keep-focus activate)
  "return focus to python code buffer"
  (save-excursion ad-do-it))

(setenv "PYMACS_PYTHON" "python2.7")

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(provide 'python-programming)
