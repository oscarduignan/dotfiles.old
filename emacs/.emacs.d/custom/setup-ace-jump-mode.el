(use-package ace-jump-mode
  :commands (ace-jump-char-mode ace-jump-word-mode ace-jump-line-mode)
  :init
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key
        "c" 'ace-jump-char-mode
        "w" 'ace-jump-word-mode
        "l" 'ace-jump-line-mode)))

(provide 'setup-ace-jump-mode)
