(add-to-list 'load-path (concat my-libs-dir "js2"))
(add-to-list 'load-path (concat my-libs-dir "js2-refactor"))
(add-to-list 'load-path (concat my-libs-dir "mark-multiple"))
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

;; pretty print json
(defun esk-pp-json ()
  "Pretty-print the json object following point."
  (interactive)
  (require 'json)
  (let ((json-object (save-excursion (json-read))))
    (switch-to-buffer "*json*")
    (delete-region (point-min) (point-max))
    (insert (pp json-object))
    (goto-char (point-min))))

;; hack to get a running js2-mode
(add-hook 'js-mode-hook 'js2-mode)
;;
;; js2 config
;;
;(add-hook 'js2-mode-hook 'esk-paredit-nonlisp) ; paredit does not work with js2-mode :(
(add-hook 'js2-mode-hook 'run-coding-hook)
(eval-after-load 'js2-mode
  '(progn
     (require 'mark-more-like-this)
     (define-key js2-mode-map "{" 'paredit-open-curly)
     (define-key js2-mode-map "}" 'paredit-close-curly-and-newline)
     ;; fixes problem with pretty function font-lock
     (define-key js2-mode-map (kbd ",") 'self-insert-command)

     (require 'js2-refactor)
     (define-key js2-mode-map (kbd "C-c C-r") 'js2-rename-var)
     (define-key js2-mode-map (kbd "TAB")
          (lambda()
              (interactive)
              (let ((yas/fallback-behavior 'return-nil))
                   (unless (yas/expand)
                   (indent-for-tab-command)
                   (if (looking-back "^\s*")
                       (back-to-indentation))))))
     (font-lock-add-keywords 'js2-mode
          `(("\\(function *\\)("
            (0 (progn (compose-region (match-beginning 1) (match-end 1) "ƒ") nil)))))
     (font-lock-add-keywords 'js2-mode
                             '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
                                1 font-lock-warning-face t)))))

;; http://js-comint-el.sourceforge.net/
;; js evaluator
;; commands:
;;      M-x run-js
;;      M-x js-send-*
;;
(add-to-list 'load-path (concat my-libs-dir "js-comint"))
(require 'js-comint)
(setq inferior-js-program-command "node") ;; set REPL
(setq inferior-js-mode-hook
      (lambda ()
        (ansi-color-for-comint-mode-on)
        ;; Deal with some prompt nonsense
        (add-to-list 'comint-preoutput-filter-functions
                     (lambda (output)
                       (replace-regexp-in-string ".*1G\.\.\..*5G" ""
                       (replace-regexp-in-string ".*1G.*3G" "> " output))))))
(add-hook 'js2-mode-hook '(lambda ()
    (local-set-key (kbd "<f11>") 'run-js)
    (local-set-key "\C-\M-x" 'js-send-region)
    (local-set-key "\C-xe" 'js-send-last-sexp)
    (local-set-key "\C-x\C-e" 'js-send-last-sexp-and-go)
    (local-set-key "\C-cb" 'js-send-buffer)
    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
    (local-set-key "\C-cl" 'js-load-file-and-go)
    ))
;; http://mihai.bazon.net/projects/editing-javascript-with-emacs-js2-mode/js2-highlight-vars-mode
;; js2 variable highlighter
;; commands:
;;      M-n       'js2-highlight-vars-next
;;      C-<down>  'js2-highlight-vars-next
;;      M-p       'js2-highlight-vars-prev
;;      C-<up>    'js2-highlight-vars-prev
;;      M-r       'js2-highlight-vars-rename
;;
(add-to-list 'load-path (concat my-libs-dir "js2-highlight-vars"))
(require 'js2-highlight-vars)
(if (featurep 'js2-highlight-vars)
  (js2-highlight-vars-mode))


