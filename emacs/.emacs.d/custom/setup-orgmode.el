(use-package org
  :ensure org-plus-contrib
  :bind (("C-c l" . org-store-link)
           ("C-c a" . org-agenda)
           ("C-c b" . org-iswitchb)
           ("C-c c" . org-capture))
  :config
  (progn
    (setq
      ;; Stop org-mode from highjacking shift-cursor keys.
      org-replace-disputed-keys t
      org-completion-use-ido t
      org-startup-indented t
      org-hide-leading-stars t
      org-odd-level-only nil)
    ;; Always use visual-line-mode in org-mode, and wrap it at column 80.
    (add-hook
     'org-mode-hook
     (lambda ()
       (visual-line-mode 1)
       (set-visual-wrap-column 79)
       ()))))

(provide 'setup-orgmode)
