(use-package web-mode
  :mode (("\\.jsx?$" . web-mode)
         ("\\.es6\\'" . web-mode)
         ("\\.ejs\\'" . web-mode))
  :config
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.jsx?$")))
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; Stop web-mode from using block comments in comment-dwim.
  (setq web-mode-comment-formats
        (-map-when (lambda (i) (equal (car i) "javascript"))
                   (lambda (i) '("javascript" . "//"))
                   web-mode-comment-formats)))

;; Install js2-mode, which improves on Emacs's default JS mode
;; tremendously.
(use-package js2-mode
  :mode (("\\.js$" . js2-mode)
         ("\\.es6\\'" . js2-mode)
         ("\\.ejs\\'" . js2-mode))
  :interpreter "node"
  :commands js2-mode
  :config
  ;; Leverage js2-mode to get some refactoring support through js2-refactor.
  (use-package js2-refactor
    :commands (js2r-add-keybindings-with-prefix)
    :init
    (add-hook 'js2-mode-hook #'js2-refactor-mode)
    (js2r-add-keybindings-with-prefix "C-c C-m"))
  ;; Configure js2-mode
  (setq-default
   js2-mode-show-parse-errors nil
   js2-mode-show-strict-warnings nil))

;; Use Tern for smarter JS.
;(use-package tern
  ;:config
  ;(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  ;; Locate the Tern binary by querying the system search path, which
  ;; should now include the local npm prefix.
  ;(setq tern-command (list "tern"))
  ;; Setup Tern as an autocomplete source.
  ;(with-eval-after-load "company"
    ;(use-package company-tern
      ;:config
      ;(add-to-list 'company-backends 'company-tern))))

(provide 'setup-js)
