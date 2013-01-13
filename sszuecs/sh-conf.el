;; sh-mode config
(defun sszuecs-setup-sh-mode ()
  (setq sh-basic-offset 2
        sh-indentation 2
        sh-indent-for-case-label 0
        sh-indent-for-case-alt '+
        ))

(add-hook 'sh-mode-hook 'sszuecs-setup-sh-mode)
