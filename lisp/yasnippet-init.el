;;;;
;; yasnippet
;;;;
(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs
'("~/.emacs.d/snippets" ;; personal snippets
))

;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x y n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x y v") 'yas-visit-snippet-file)
