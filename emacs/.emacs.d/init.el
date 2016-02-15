; Skip the default splash screen
(setq inhibit-startup-message t)

; Add custom elisp to path
(add-to-list 'load-path (expand-file-name "custom" user-emacs-directory))

; Keep emacs custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

; Require custom elisp
(require 'setup-packages)
(require 'setup-projects)
(require 'setup-git)
(require 'setup-evil)
(require 'setup-ace-jump-mode)
(require 'setup-dired)
(require 'setup-flycheck)
