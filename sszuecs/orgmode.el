(add-to-list 'load-path "~/emacs-libs/org-7.3/lisp")

; org-mode customization
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; use org-remember to add fast short memos 
;(org-remember-insinuate) ; what?
(define-key global-map "\C-cr" 'org-remember) ; -> ~/.notes

;; use org-capture to add fast todo items to remember them later
(require 'org-capture)
(setq org-default-notes-file (expand-file-name "~/org/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

;; specific key mappings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)        ; switch buffer

;; related config
'(org-return-follows-link t)
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

;; todo-lists
(setq org-todo-keywords 
      '((sequence "TODO(t)" "NEXT(n!)" "|" "DONE(d!/!)" "DELEGATED(g@/!)")
        (sequence "WAITING(w@/!)" "SOMEDAY(s!)" "|" "CANCELLED(c@/!)")
        (sequence "OPEN(O!)" "|" "CLOSED(C!)" "REJECTED(R@)")))
(setq org-todo-keyword-faces
      (quote (("TODO"      :foreground "red"          :weight bold)
              ("NEXT"      :foreground "blue"         :weight bold)
              ("DONE"      :foreground "forest green" :weight bold)
              ("DELEGATED" :foreground "forest green" :weight bold)
              ("WAITING"   :foreground "yellow"       :weight bold)
              ("SOMEDAY"   :foreground "goldenrod"    :weight bold)
              ("CANCELLED" :foreground "orangered"    :weight bold)
              ("OPEN"      :foreground "magenta"      :weight bold)
              ("CLOSED"    :foreground "forest green" :weight bold)
              ("REJECTED"  :foreground "olivedrab"    :weight bold))))

(setq org-log-done 'time)
  '(org-enforce-todo-checkbox-dependencies t)
  '(org-enforce-todo-dependencies t)
  '(org-deadline-warning-days 7)
(setq org-use-fast-todo-selection t)

;; tagging
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("@elsewhere" . ?e) ("ruby" . ?r) ("framework" . ?f)))

;; agenda TODO: customize these to get what I want
(setq org-agenda-custom-commands
  '(("P" "Printed agenda"
      ((agenda "" (
         (org-agenda-ndays 7)                     ;; overview of appointments
         (org-agenda-start-on-weekday nil)        ;; calendar begins today
         (org-agenda-repeating-timestamp-show-all t)
         (org-agenda-entry-types '(:timestamp :sexp))))
       (agenda "" (
         (org-agenda-ndays 1)                     ;; daily agenda
         (org-deadline-warning-days 7)            ;; 7 day advanced warning for deadlines
         (org-agenda-todo-keyword-format "[ ]")
         (org-agenda-scheduled-leaders '("" ""))
         (org-agenda-prefix-format "%t%s")))
       (todo "TODO"                               ;; todos sorted by context
        ((org-agenda-prefix-format "[ ] %T: ")
         (org-agenda-sorting-strategy '(tag-up priority-down))
         (org-agenda-todo-keyword-format "")
         (org-agenda-overriding-header "\nTasks by Context\n------------------\n"))))
      ((org-agenda-with-colors nil)
       (org-agenda-compact-blocks t)
       (org-agenda-remove-tags t)
       (ps-number-of-columns 2)
       (ps-landscape-mode t))
      ("~/agenda.ps"))
    ("O" "Office block agenda"
      ((agenda "" ((org-agenda-ndays 1))) ;; limits the agenda display to a single day
        (tags-todo "+PRIORITY=\"A\"")
        (tags-todo "@work|office")
        (tags "project+CATEGORY=\"@work\"")
        (tags "review" ((org-agenda-files '("~/org/todo.org")))) ;; limits the tag search to the file 
        (todo "WAITING"))
      ((org-agenda-compact-blocks t))) ;; options set here apply to the entire block
    ("D" "DEV agenda"
      ((agenda "" (
        (org-agenda-ndays 1)
        (org-deadline-warning-days 7)))
        (todo "REPORT")
        (todo "FEATURE")
        (todo "BUG")))
    ("H" "Home-Office agenda"
      ((agenda "" (
        (org-agenda-ndays 1)
        (org-deadline-warning-days 7)))
        (todo "STARTED")
        (todo "REVIEW")
        (todo "TODO")
        (todo "WAITING")
      )
    )
    ;; other commands go here
    ))