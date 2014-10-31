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
                    "~/emacs-libs/ipython/"
;                    "~/emacs-libs/anything/"
                    )
              load-path))

(setenv "PYMACS_PYTHON" "python2.7")
;; {{{ pyflakes
;(setq python-check-command "pyflakes") ;; % pip install pyflakes
;}}}
;; {{{ ipython
;(require 'ipython)
; (add-hook 'python-mode-hook #'(lambda ()
;                                 (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))
; (add-hook 'ipython-shell-hook #'(lambda ()
;                                   (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))
;}}}
;; {{{ jedi mode - smart autocomplete
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;; Type:
;;     M-x package-install RET jedi RET
;;     M-x jedi:install-server RET
; }}}
;; {{{ lambda mode
(require 'lambda-mode)
(add-hook 'python-mode-hook #'lambda-mode 1)
(setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))
; }}}
;; {{{ anything completion
(require 'anything)
;(require 'anything-ipython)
(require 'anything-match-plugin)
(require 'anything-config)
 (when (require 'anything-show-completion nil t)
    (use-anything-show-completion 'anything-ipython-complete
                                  '(length initial-pattern)))
; }}}
;; {{{ better code pylint
(require 'python-pylint)
(require 'python-pep8)
; }}}
;; {{{ autopair  - deactivate on lisp-modes
(autoload 'autopair-global-mode "autopair" nil t)
          (autopair-global-mode)
          (add-hook 'lisp-mode-hook
                    #'(lambda () (setq autopair-dont-activate t)))
(add-hook 'python-mode-hook
          #'(lambda () (push '(?' . ?')
                              (getf autopair-extra-pairs :code))
 (setq autopair-handle-action-fns
      (list #'autopair-default-handle-action
            #'autopair-python-triple-quote-action))))
; }}}
;; {{{ pylookup
(setq pylookup-dir "~/emacs-libs/pylookup/")
(add-to-list 'load-path pylookup-dir)

;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; keybindings
(global-set-key "\C-ch" 'pylookup-lookup)
;; set search option if you want
;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'pylookup-update "pylookup"
  "Run pylookup-update and create the database at `pylookup-db-file'." t)

;; }}}
;; {{{ codevalidator
(defvar codevalidator-py "~/bin/codevalidator.py -f ")

(defun run-codevalidator-py ()
  (interactive)

  (cond ((string-equal (file-name-extension buffer-file-name) "py")
      (if (= (shell-command
           (concat codevalidator-py (buffer-file-name)))
         0)
         (message (concat
                   "Ran "
                   codevalidator-py
                   " on "
                   (buffer-file-name)))))))
; }}}
;; {{{ rainbow-delimiter
(add-to-list 'load-path "~/emacs-libs/rainbow-delimiters/")
(require 'rainbow-delimiters)
;; }}}
;; {{{ python-mode
(defun run-python-pylint ()
  (interactive)
  (cond ((string-equal (file-name-extension buffer-file-name) "py")
      (python-pylint))
      )
  )

(add-hook 'python-mode-hook
          (lambda ()
                  (subword-mode 1)
                  (require 'pymacs)
                  (setq flyspell-mode nil)
                  (pymacs-load "ropemacs" "rope-")
                  (add-hook 'before-save-hook 'run-codevalidator-py)
                  (add-hook 'after-save-hook 'run-python-pylint)
                  (setq ropemacs-mode 1)
                  (rainbow-delimiters-mode 1)
                  ))

(defadvice py-execute-buffer (around python-keep-focus activate)
  "return focus to python code buffer"
  (save-excursion ad-do-it))

(font-lock-add-keywords 'python-mode
                        '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
                           1 font-lock-warning-face t)))
;}}}

(provide 'python-programming)

