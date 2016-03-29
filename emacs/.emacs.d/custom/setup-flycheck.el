(use-package flycheck
  :config
  (setq-default flycheck-disabled-checkers
    (append flycheck-disabled-checkers
	'(javascript-jshint)))
  (add-hook 'find-file-hook
            (lambda ()
              (when (not (equal 'emacs-lisp-mode major-mode))
                (flycheck-mode)))))

; TODO need to set this up to work with es6 features and I guess eslint

(provide 'setup-flycheck)
