
(setq default-tab-width 4)

(add-hook 'c-mode-common-hook
(lambda ()
(setq c-basic-offset 4)
;;(setq c-auto-newline t)
(setq c-hungry-delete-key t)
(setq c-tab-width 4)
(setq indent-tabs-mode t)
(setq show-paren-mode t)
(c-set-offset 'substatement-open 0)
(c-set-offset 'substatement-close 0)
;;(c-set-style "bsd")             ; set c-basic-offset to 4, plus other stuff
;;( setq c-tab-always-indent nil)
))

;; clean up indent
(require 'clean-aindent-mode)

 ;; Package: smartparens
(require 'smartparens-config)
(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; clean up indent
(require 'clean-aindent-mode)

(add-hook 'prog-mode-hook 'clean-aindent-mode)
