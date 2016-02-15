(use-package flycheck
  :config
  ;; Start it automatically for all modes except ELisp mode,
  ;; where the linter is just designed to make you mad.
  (add-hook 'find-file-hook
            (lambda ()
              (when (not (equal 'emacs-lisp-mode major-mode))
                (flycheck-mode)))))

; TODO need to set this up to work with es6 features and I guess eslint

(provide 'setup-flycheck)
