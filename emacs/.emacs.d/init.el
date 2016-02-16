(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

; Skip the default splash screen
(setq inhibit-startup-message t)

; Add custom elisp to path
(add-to-list 'load-path (expand-file-name "custom" user-emacs-directory))

; Keep emacs custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

; Require custom elisp
(require 'setup-packages)
(require 'setup-appearance)
(require 'setup-projects)
(require 'setup-git)
(require 'setup-evil)
(require 'setup-ace-jump-mode)
(require 'setup-dired)
(require 'setup-expand-region)
(require 'setup-help)
(require 'setup-complete)
(require 'setup-ido)
(require 'setup-flycheck)
(require 'setup-js)
(require 'setup-html)
(require 'setup-orgmode)
(require 'setup-keybindings)
(require 'setup-neotree)
(require 'setup-server)
