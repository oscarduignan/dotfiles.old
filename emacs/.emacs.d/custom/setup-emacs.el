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

;; They fuck with webpack
;; http://stackoverflow.com/questions/5738170/why-does-emacs-create-temporary-symbolic-links-for-modified-files
(setq create-lockfiles nil)

;; Keep backup and auto save files out of working directory
(setq backup-directory-alist
      `((".*" . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/autosaves" t)))

;; unclutter mode line
(use-package diminish)

(use-package editorconfig
  :config
  (editorconfig-mode 1))

;; C-c left and C-c right to undo / redo window changes
;; so you can C-x 1 and C-x C-f and then return to old layout when done
;; also going to investigate using emacs i3 integration
(when (fboundp 'winner-mode)
      (winner-mode 1))

(defun find-file-fullscreen (filename)
    (interactive "FFind file: ")
    (find-file filename)
    (delete-other-windows))

(global-set-key (kbd "C-x C-z") 'find-file-fullscreen)

(use-package powerline
  :config
  (setq powerline-display-buffer-size nil)
  (setq powerline-display-mule-info nil)
  (setq powerline-display-hud nil)
  (powerline-default-theme))

(use-package php-mode)

(provide 'setup-emacs)
