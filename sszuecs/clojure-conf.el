;  - add to your project.clj:
;    -> :dev-dependencies [[swank-clojure "1.2.1"]]
;  - % lein swank
;  - M-x slime-connect
(add-to-list 'load-path "~/emacs-libs/clojure-mode/")
(add-to-list 'load-path "~/emacs-libs/swank-clojure/")
(require 'clojure-mode)
(add-hook 'clojure-mode-hook (paredit-mode 1))


; get syntax highlighting in your repl buffer
(add-hook 'slime-repl-mode-hook
          (defun clojure-mode-slime-font-lock ()
            (require 'clojure-mode)
            (let (font-lock-mode)
              (clojure-mode-font-lock-setup))))

