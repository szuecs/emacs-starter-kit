(defvar is-gnu-linux (string-equal system-type "gnu/linux"))

(unless (not is-gnu-linux)
  (setenv "PATH" (concat (getenv "PATH") ":/usr/lib/go/bin:/usr/local/go/bin:/home/sszuecs/go/bin"))
  (setenv "GOROOT" "/usr/lib/go")
)
