(package-initialize nil)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)

;; Override the packages with the git version of Org and other packages
(package-initialize t)
(setq package-enable-at-startup nil)
(require 'org)
(require 'ob-tangle)
(load "~/.emacs.secrets" t)
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-variables
 '(inhibit-startup-screen t))
