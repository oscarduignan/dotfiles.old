(use-package ample-theme
  :init (progn (load-theme 'ample t t)
               (load-theme 'ample-light t t))
  :defer t
  :ensure t)

;(enable-theme 'tsdh-dark)

(global-hl-line-mode 1)

(show-paren-mode 1)

(setq column-number-mode t)

(setq-default truncate-lines nil)

; unclutter mode line
(use-package diminish)

(provide 'setup-appearance)
