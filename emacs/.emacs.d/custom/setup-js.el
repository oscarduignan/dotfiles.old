(use-package web-mode
  :mode (("\\.jsx?$" . web-mode)
         ("\\.es6\\'" . web-mode)
         ("\\.ejs\\'" . web-mode))
  :config
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.jsx?$")))
  ;; Stop web-mode from using block comments in comment-dwim.
  (setq web-mode-comment-formats
        (-map-when (lambda (i) (equal (car i) "javascript"))
                   (lambda (i) '("javascript" . "//"))
                   web-mode-comment-formats))
  ;; Let Flycheck know that we're using web-mode for JS.
  (with-eval-after-load "flycheck"
    (flycheck-add-mode 'javascript-eslint 'web-mode)
    (setq flycheck-javascript-eslint-executable "eslint")))

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
  ;; Configure js2-mode good.
  (setq-default
   js2-mode-indent-ignore-first-tab t
   js2-strict-inconsistent-return-warning nil
   js2-global-externs
   '("module" "require" "__dirname" "process" "console" "JSON" "$" "_"))
  ;; js2-show-parse-errors nil
  ;; js2-strict-var-hides-function-arg-warning nil
  ;; js2-strict-missing-semi-warning nil
  ;; js2-strict-trailing-comma-warning nil
  ;; js2-strict-cond-assign-warning nil
  ;; js2-strict-var-redeclaration-warning nil
  )

;; Use Tern for smarter JS.
(use-package tern
  :config
  (add-hook 'web-mode-hook (lambda () (tern-mode t)))
  ;; Locate the Tern binary by querying the system search path, which
  ;; should now include the local npm prefix.
  (setq tern-command (list "tern"))
  ;; Setup Tern as an autocomplete source.
  (with-eval-after-load "company"
    (use-package company-tern
      :commands company-tern
      :config
      (add-to-list 'company-backends 'company-tern))))

(provide 'setup-js)
