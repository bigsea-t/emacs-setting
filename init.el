(require 'package)
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(load-theme 'misterioso t)


(load "magit-init")
(load "flymake-init")
(load "yasnippet-init")
(load "viewmode-init")
(load "betterdefault-init")
(load "style-init")
(load "gtags-init")

(setq x-select-enable-clipboard t)

(keyboard-translate ?\C-h ?\C-?)

;;compile shortcut
(define-key mode-specific-map "c" 'compile)

;;shell shortcut
(define-key mode-specific-map "z" 'shell-command)


(define-key ctl-x-map "\C-q" 'view-mode)

(global-set-key [f7] '(lambda ()
(interactive)
(find-file "~/.emacs.d/init.el")))
