;; example identica usage
;(defun start-identica ()
;  (interactive)
;    (load-library "secrets.el.gpg")
;    (provide 'secrets)
;      (identica-friends-timeline))

(require 'epa-file)
(epa-file-enable)

;; 'silent to use symmetric encryption
;; nil to ask for users unless specified
;; t to always ask for a public-key before encryption
(setq epa-file-select-keys t)
