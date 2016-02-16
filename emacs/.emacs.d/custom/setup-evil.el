(use-package evil
  :config
  (evil-mode 1)
  (setq evil-normal-state-tag (propertize "Normal" 'face '((:background "black" :foreground "green")))
	evil-emacs-state-tag (propertize "E" 'face '((:background "orange" :foreground "black")))
	evil-insert-state-tag (propertize "Insert" 'face '((:background "black" :foreground "red")))
	evil-motion-state-tag (propertize "M" 'face '((:background "blue")))
	evil-visual-state-tag (propertize "Visual" 'face '((:background "black" :foreground "grey80")))
	evil-operator-state-tag (propertize "O" 'face '((:background "purple")))))

(use-package evil-leader
  :config
  (setq evil-leader/in-all-states 1)
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>"))

; explore later for more
; https://github.com/syl20bnr/spacemacs/blob/0562f050b4b56470dc68744667794b20abe9570a/layers/%2Bdistribution/spacemacs/packages.el
; https://github.com/magnars/.emacs.d/blob/bc02c2d8853afc8ee61cc705945b47c725b9fb65/settings/setup-package.el

(setq evil-normal-state-tag (propertize "Normal" 'face '((:background "black" :foreground "green")))
      evil-emacs-state-tag (propertize "E" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag (propertize "Insert" 'face '((:background "black" :foreground "red")))
      evil-motion-state-tag (propertize "M" 'face '((:background "blue")))
      evil-visual-state-tag (propertize "Visual" 'face '((:background "black" :foreground "grey80")))
      evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))

(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)

(provide 'setup-evil)
