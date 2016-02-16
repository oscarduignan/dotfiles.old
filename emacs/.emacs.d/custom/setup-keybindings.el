; most of the time I don't want to quit emacs fully
; https://github.com/magnars/.emacs.d/blob/master/settings/key-bindings.el
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

; easier movement
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

; jump back and forth between windows I've been to! gold
(defun frame-bck()
  (interactive)
  (other-window-or-frame -1)
)
(define-key (current-global-map) (kbd "M-o") 'other-window-or-frame)
(define-key (current-global-map) (kbd "M-O") 'frame-bck)

(provide 'setup-keybindings)
