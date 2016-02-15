(use-package ample-theme
  :init (progn (load-theme 'ample t t)
               (load-theme 'ample-light t t)
               (enable-theme 'ample))
  :defer t
  :ensure t)

(global-hl-line-mode 1)

(show-paren-mode 1)

; unclutter mode line
(use-package diminish)

(provide 'setup-appearance)
