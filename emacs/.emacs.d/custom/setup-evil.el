(use-package evil
  :config
  (evil-mode 1))

(use-package evil-leader
  :config
  (setq evil-leader/in-all-states 1)
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>"))

; explore later for more
; https://github.com/syl20bnr/spacemacs/blob/0562f050b4b56470dc68744667794b20abe9570a/layers/%2Bdistribution/spacemacs/packages.el
; https://github.com/magnars/.emacs.d/blob/bc02c2d8853afc8ee61cc705945b47c725b9fb65/settings/setup-package.el

(provide 'setup-evil)
