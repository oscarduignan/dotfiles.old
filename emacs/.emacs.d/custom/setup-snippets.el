;; The s.el package contains a lot of functions useful in snippets.
;; string manipulation!
(use-package s)

;; Install yasnippet and make it available globally.
;; Read about it here: http://capitaomorte.github.io/yasnippet/
(use-package yasnippet
  ;;:commands yas-global-mode
  :init
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets"))
  :config
  (yas-global-mode 1))

(provide 'setup-snippets)
