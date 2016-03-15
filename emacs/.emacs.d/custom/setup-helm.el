(use-package helm
  :config
  (setq helm-buffers-fuzzy-matching t)
  :init
  (progn
    (helm-mode t)
    (helm-adaptive-mode t)
    (use-package helm-ag
      :bind ("C-c a" . helm-ag))
    (use-package helm-descbinds
      :bind ("C-h b" . helm-descbinds))))

(provide 'setup-helm)
