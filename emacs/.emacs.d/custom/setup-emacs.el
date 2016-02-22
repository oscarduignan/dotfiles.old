(use-package eclipse-theme)

(global-hl-line-mode 1)

(show-paren-mode 1)

;;(global-linum-mode 1)

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

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package powerline
  :config
  (setq powerline-display-buffer-size nil)
  (setq powerline-display-mule-info nil)
  (setq powerline-display-hud nil)
  (powerline-default-theme))

(provide 'setup-emacs)
