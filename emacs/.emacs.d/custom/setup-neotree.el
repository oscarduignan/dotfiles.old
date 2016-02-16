(use-package neotree
  :bind ([f8] . neotree-toggle)
  :config
  (progn
    ;(setq projectile-switch-project-action 'neotree-projectile-action)
    (add-hook 'neotree-mode-hook
      (lambda ()
	(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
	(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	(define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)
	(define-key evil-normal-state-local-map (kbd "RET") 'neotree-change-root)))))

(provide 'setup-neotree)
