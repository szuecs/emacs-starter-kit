(add-to-list 'load-path "~/emacs-libs/org-jira")

(setq jiralib-url "https://techjira.zalando.net/")
;; you need make sure whether the "/jira" at the end is
;; necessary or not, see discussion at the end of this page

(require 'org-jira)
;; jiralib is not explicitly required, since org-jira will load it.

