;; no need
;; cmd-t -> C-x C-f
;; mulled/edit-{lead,trail}ing -line
;(add-to-list 'load-path "~/emacs-libs/textmate/textmate.el")
;(require 'textmate)
;(textmate-mode)

(local-set-key (kbd "C-/") 'uncomment-region)
(local-set-key (kbd "C-7") 'comment-region)
