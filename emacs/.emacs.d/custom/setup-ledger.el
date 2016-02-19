(use-package ledger-mode
  :commands ledger-report-mode
  :init
  (setq ledger-clear-whole-transactions 1)
  :config
  (add-to-list 'evil-emacs-state-modes 'ledger-report-mode)
  :mode "\\.dat\\'")

(provide 'setup-ledger)
