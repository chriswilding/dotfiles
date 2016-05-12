;; Packages
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar packages
  '(
    ))

(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Settings
(menu-bar-mode -1)
