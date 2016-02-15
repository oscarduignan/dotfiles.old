(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(require 'cl)

(defun online? ()
  (if (and (functionp 'network-interface-list)
           (network-interface-list))
      (some (lambda (iface) (unless (equal "lo" (car iface))
                         (member 'up (first (last (network-interface-info
                                                   (car iface)))))))
            (network-interface-list))
    t))

(when (online?)
  (unless package-archive-contents (package-refresh-contents)))

(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

(provide 'setup-packages)
