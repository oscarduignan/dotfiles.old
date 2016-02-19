(use-package org
  :ensure org-plus-contrib
  :bind (("C-c o l" . org-store-link)
           ("C-c o a" . org-agenda)
           ("C-c o b" . org-iswitchb)
           ("C-c o c" . org-capture))
  :config
  (progn
    (setq
      ;; Stop org-mode from highjacking shift-cursor keys.
      org-replace-disputed-keys t
      org-completion-use-ido t
      org-startup-indented t
      org-hide-leading-stars t
      org-odd-level-only nil)
    (with-eval-after-load "evil"
      (evil-define-key 'normal org-mode-map
	"H" 'org-shiftleft
	"J" 'org-shiftdown
	"K" 'org-shiftup
	"L" 'org-shiftright
	"<" 'org-metaleft
	">" 'org-metaright
	(kbd "M-h") 'org-metaleft
	(kbd "M-j") 'org-metadown
	(kbd "M-k") 'org-metaup
	(kbd "M-l") 'org-metaright
	(kbd "M-H") 'org-shiftmetaleft
	(kbd "M-J") 'org-shiftmetadown
	(kbd "M-K") 'org-shiftmetaup
	(kbd "M-L") 'org-shiftmetaright))))

(use-package visual-fill-column
  :config
  (progn
    (add-hook
     'org-mode-hook
     (lambda ()
       (visual-line-mode 1)
       (setq visual-fill-column-width 79)
       (visual-fill-column-mode 1)))))

(provide 'setup-orgmode)
