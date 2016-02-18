;; full screen magit status
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(use-package magit
  :bind ("C-x g" . magit-status)
  :config
  (define-key magit-status-mode-map (kbd "q") 'magit-quit-session)
  (with-eval-after-load "diff-hl"
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)))

;; set your github creds in git config http://github.com/blog/180-local-github-config
;; then you can use M-x gist-[buffer|region] to create gist from buffer or selection
(use-package gist)

;; mark changes in the gutter, might switch to git-gutter as it has
;; some commands to stage chunks which I think is prob useful
(use-package diff-hl
  :config
  (global-diff-hl-mode)
  (diff-hl-flydiff-mode))

(provide 'setup-git)
