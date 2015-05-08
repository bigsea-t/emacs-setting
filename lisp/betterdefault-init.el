;;better default

;; C-x C-fやC-x bでファイルやバッファを開くとき
;; 部分文字列を指定してC-s/C-rで選択できるようにする
(ido-mode t)
;; あいまいマッチ
;; 候補に "alpha", "beta", "gamma", "delta" があるときに
;; "aa" → "alpha", "gamma"
;; "ea" → "beta", "delta".
;; つまり文字を飛び超えられる！
(setq ido-enable-flex-matching t)

;;; メニューバー・ツールバー・スクロールバーを切る
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
(tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
(scroll-bar-mode -1))

;;; M-z (zap-to-char)の亜種、zap-up-to-charを使えるようにする
(autoload 'zap-up-to-char "misc"
"Kill up to, but not including ARGth occurrence of CHAR." t)

;;; uniquify.el
;; 違うディレクトリで同じファイル名のファイルを開いたときに
;; バッファ名にディレクトリも付記するようにする
;; Emacs 24.4ではデフォルト
(require 'uniquify)
;; /foo/bar/mumble/name, /baz/quux/mumble/nameというファイルなら
;; それぞれ bar/mumble/name, quux/mumble/name というバッファ名に
;; ただし、Emacs 24.4デフォルトでは post-forward-angle-brackets
;; に設定されるので name<bar/mumble>, name<quux/mumble> になる。
(setq uniquify-buffer-name-style 'forward)

;;; saveplace.el
;; ファイルを閉じたとき、次に開くときはその場所(point)から開く
(require 'saveplace)
(setq-default save-place t)

;;; デフォルトのキーバインドをより高機能なコマンドに置き換える
;; dabbrev-expand -> hippie-expand
;; dabbrev以外にも様々な展開・補完ができるようになる
(global-set-key (kbd "M-/") 'hippie-expand)
;; list-buffers -> ibuffer
;; バッファメニューを高機能なibufferに！
;; 何よりバッファメニューがカレントになる！！
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; zap-to-char -> zap-up-to-char
;; zap-to-charはその文字までを削除するが
;; zap-up-to-charはその文字の直前までを削除する
;; その文字も削除したければ直後にC-dを押せばいい
(global-set-key (kbd "M-z") 'zap-up-to-char)

;;; 普通のisearchと正規表現isearchのキーバインドを逆転
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;;; 対応する括弧を表示してくれる
(show-paren-mode 1)
;;; タブでインデントしない
(setq-default indent-tabs-mode nil)
(setq
;; クリップボードでコピー＆ペーストできるようにする
x-select-enable-clipboard t
;; PRIMARY selectionを使う(Windowsでは対象外)
x-select-enable-primary t
;; クリップボードでコピー・カットした文字列を
;; キルリングにも保存させる
save-interprogram-paste-before-kill t
;; M-x apropos等でより多くのシンボルを見つけるようにする
;; ただし、ちょっと遅くなる
;;
;; M-x apropos-user-optionはすべての変数を
;; M-x apropos-commandはすべての関数を
;; M-x apropos-commandはすべてのシンボル(関数、変数、フェイス以外も)
;; M-x apropos-valueは属性リストや関数内も
;; M-x apropos-documentationはetc/DOC以外のすべての説明文字列も
apropos-do-all t
;; マウスでyankしたとき、クリックした場所ではなくて現在位置を対象に
mouse-yank-at-point t
;; 保存時にファイル末尾に改行を入れる
require-final-newline t
;; エラー時などはベル音ではなくて画面を1回点滅させる
visible-bell t
;; ediff時に新しいフレームを作らない(シンプルになる)
ediff-window-setup-function 'ediff-setup-windows-plain
;; ~/.emacs.d/placesにファイル・位置情報を保存する
save-place-file (concat user-emacs-directory "places")
;; バックアップファイルはカレントディレクトリではなく
;; ~/.emacs.d/backups 以下に保存する
backup-directory-alist `(("." . ,(concat user-emacs-directory
"backups"))))
