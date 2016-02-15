(use-package magit
  :bind ("C-x g" . magit-status))

; set your github creds in git config http://github.com/blog/180-local-github-config
; then you can use M-x gist-[buffer|region] to create gist from buffer or selection
(use-package gist)

;; Mark uncommitted changes in the fringe (must save file first)
(use-package git-gutter-fringe
  :config
  (global-git-gutter-mode t))

(provide 'setup-git)
