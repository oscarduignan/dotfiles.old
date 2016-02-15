(use-package dired+
  :config
  (with-eval-after-load "evil"
    ; open to current file
    (bind-key "-" 'dired-jump evil-normal-state-map)))

(provide 'setup-dired)
