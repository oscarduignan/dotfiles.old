(defun neotree-copy-file ()
  (interactive)
  (let* ((current-path (neo-buffer--get-filename-current-line))
         (msg (format "Copy [%s] to: "
                      (neo-path--file-short-name current-path)))
         (to-path (read-file-name msg (file-name-directory current-path))))
    (dired-copy-file current-path to-path t))
  (neo-buffer--refresh t))

(use-package neotree
  :commands neotree-projectile-action
  :bind ([f8] . neotree-toggle)
  :init
  ;; disabled as I want it to C-p p f by default, as well as open the root directory of project in dired and change neotree dir
  ;; I should take a look at helm-mini for this as seems awesome but don't want too much complexity, maybe have "C-p p P" too?
  ;(setq projectile-switch-project-action 'neotree-projectile-action)
  :config
  ;; https://github.com/andrewmcveigh/emacs.d/blob/4d8431b6f6f2b2661eec5014c0ff31ab70f80ede/lisp/init-neotree.el
  (define-minor-mode neotree-evil
  "Use NERDTree bindings on neotree."
  :lighter " NT"
  :keymap (progn
	    (evil-make-overriding-map neotree-mode-map 'normal t)
	    (evil-define-key 'normal neotree-mode-map
	    "C" 'neotree-change-root
	    "U" 'neotree-select-up-node
	    "r" 'neotree-refresh
	    "o" 'neotree-enter
	    (kbd "<return>") 'neotree-enter
	    "H" 'neotree-hidden-file-toggle
	    "q" 'neotree-hide
	    "i" 'neotree-enter-horizontal-split
	    "s" 'neotree-enter-vertical-split
	    "n" 'evil-search-next
	    "N" 'evil-search-previous
	    "ma" 'neotree-create-node
	    "mc" 'neotree-copy-file
	    "md" 'neotree-delete-node
	    "mm" 'neotree-rename-node
	    "gg" 'evil-goto-first-line
	    "gi" (lambda ()
		    (interactive)
		    (if (string= pe/get-directory-tree-external-command
				nt/gitignore-files-cmd)
			(progn (setq pe/get-directory-tree-external-command
				    nt/all-files-cmd))
		    (progn (setq pe/get-directory-tree-external-command
				    nt/gitignore-files-cmd)))
		    (nt/refresh))
	    "I" (lambda ()
		    (interactive)
		    (if pe/omit-enabled
			(progn (setq pe/directory-tree-function
				    'pe/get-directory-tree-async)
			    (pe/toggle-omit nil))
		    (progn (setq pe/directory-tree-function
				'pe/get-directory-tree-external)
			    (pe/toggle-omit t)))))
	    neotree-mode-map)))

(provide 'setup-neotree)
