;(use-package ample-theme
  ;:init (progn (load-theme 'ample t t)
               ;(load-theme 'ample-light t t))
  ;:defer t
  ;:ensure t)

;; I like this theme but didn't work?
;(enable-theme 'tsdh-dark)

(global-hl-line-mode 1)

(show-paren-mode 1)

(global-linum-mode 1)

;; show me the column number in modeline
(setq column-number-mode t)

;; don't wrap lines by default
(setq-default truncate-lines nil)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; unclutter mode line
(use-package diminish)

(provide 'setup-emacs)
