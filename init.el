(require 'package) ;; You might already have this line
(package-initialize) ;; You might already have this line
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package))
  (package-refresh-contents))

(require 'use-package)

(use-package leuven-theme
  :ensure t
  :init (load-theme 'leuven t))

(use-package ido
  :init (ido-mode t))

;; (use-package helm
;;   :ensure t
;;   :bind ("C-c h" . helm-mini)
;;   :init (progn (require 'helm-config)
;; 	       (helm-mode t)))

(use-package tabbar
  :ensure t
  :init (tabbar-mode))

;; cursor type
(setq-default cursor-type '(bar . 1))

(use-package flyspell
  :ensure t)

(use-package markdown-mode
  :ensure t
  :init (progn
	  (add-hook 'markdown-mode-hook 'visual-line-mode t)
	  (add-hook 'markdown-mode-hook 'flyspell-mode t)
	  (add-hook 'markdown-mode-hook (lambda ()
					  (setq buffer-face-mode-face '(:family "Cambria" :height 130 :width semi-condensed))
					  (buffer-face-mode)
					  (setq left-margin-width 2)
					  (setq right-margin-width 2)
					  (set-window-buffer nil (current-buffer))))))


;; (use-package smart-mode-line
;;   :ensure t
;;   :init (progn (sml/setup)
;; 	       (sml/apply-theme 'automatic)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-safe-themes
   (quote
    ("d46b5a32439b319eb390f29ae1810d327a2b4ccb348f2018b94ff22f410cb5c4" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(desktop-save-mode t)
 '(fringe-mode nil nil (fringe))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(fringe ((t (:background "white" :foreground "#9B9B9B"))))
 '(variable-pitch ((t (:family "Open Sans")))))
