(use-package ace-jump-mode
  :commands (ace-jump-char-mode ace-jump-word-mode ace-jump-line-mode)
  :init
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key
        "jc" 'ace-jump-char-mode
        "jw" 'ace-jump-word-mode
        "jl" 'ace-jump-line-mode)))

(provide 'setup-ace-jump-mode)
