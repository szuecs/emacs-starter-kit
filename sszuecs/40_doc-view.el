;; http://stackoverflow.com/questions/2684547/rotate-document-in-emacs-doc-view-mode
(defun doc-view-rotate-current-page-right ()
  "Rotate the current page by 90 degrees.
Requires ImageMagick installation"
  (interactive)
  (when (eq major-mode 'doc-view-mode)
    ;; we are assuming current doc-view internals about cache-names
    (let ((file-name (expand-file-name (format "page-%d.png" (doc-view-current-page)) (doc-view-current-cache-dir))))
      ;; assume imagemagick is installed and rotate file in-place and redisplay buffer
      (call-process-shell-command "convert" nil nil nil "-rotate" "90" file-name file-name)
      (clear-image-cache)
      (doc-view-goto-page (doc-view-current-page)))))

(defun doc-view-rotate-current-page-left ()
  "Rotate the current page by +90 degrees.
Requires ImageMagick installation"
  (interactive)
  (when (eq major-mode 'doc-view-mode)
    ;; we are assuming current doc-view internals about cache-names
    (let ((file-name (expand-file-name (format "page-%d.png" (doc-view-current-page)) (doc-view-current-cache-dir))))
      ;; assume imagemagick is installed and rotate file in-place and redisplay buffer
      (call-process-shell-command "convert" nil nil nil "-rotate" "270" file-name file-name)
      (clear-image-cache)
      (doc-view-goto-page (doc-view-current-page)))))

(add-hook 'doc-view-mode-hook '(lambda ()
    (local-set-key (kbd "<f5>") 'doc-view-rotate-current-page-left)
    (local-set-key (kbd "<f6>") 'doc-view-rotate-current-page-right)))
