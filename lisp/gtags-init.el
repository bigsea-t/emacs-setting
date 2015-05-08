(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag-from-here)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))
(setq gtags-select-mode-hook
      '(lambda()
	 (local-set-key "\M-t" 'gtags-select-tag)
	 (local-set-key "\C-t" 'gtags-pop-stack)
	 (view-mode)
	 ))


