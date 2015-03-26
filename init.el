
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
 '(paradox-github-token t)
 '(sp-base-key-bindings (quote paredit))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(fringe ((t (:background "white" :foreground "#9B9B9B"))))
 '(variable-pitch ((t (:family "Open Sans")))))

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Duplicate LaTex-style macron input
(defvar custom-transl-char-map
  '(("\\=A" . [?Ā])
    ("\\=a" . [?ā])
    ("\\=E" . [?Ē])
    ("\\=e" . [?ē])
    ("\\=I" . [?Ī])
    ("\\=i" . [?ī])
    ("\\=O" . [?Ō])
    ("\\=o" . [?ō])
    ("\\=U" . [?Ū])
    ("\\=u" . [?ū])))

;; (cl-loop for (key . def) in custom-transl-char-map do
;;    (define-key 'iso-transl-ctl-x-8-map key def))

(dolist (pair custom-transl-char-map)
  (let ((key (car pair))
	(def (cdr pair)))
    (define-key 'iso-transl-ctl-x-8-map key def)))

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


(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

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

;; (use-package rw-ispell :ensure t)
;; (use-package rw-language-and-country-codes :ensure t)

;; (use-package rw-hunspell
;;   :ensure t
;;   :config (progn
;; 	    (when (executable-find "hunspell")
;; 	      (setq-default ispell-program-name "hunspell")
;; 	      (setq ispell-really-hunspell t))
	    
;; 	    ))


(use-package langtool
  :ensure t
  :bind (("C-x 4 w" . langtool-check)
	 ("C-x 4 W" . langtool-check-done)
	 ("C-x 4 l" . langtool-switch-default-language)
	 ("C-x 4 4" . langtool-show-message-at-point)
	 ("C-x 4 c" . langtool-correct-buffer))
  :config (progn
	    (setq langtool-language-tool-jar
		  "/usr/share/java/languagetool/languagetool-commandline.jar")
	    (setq langtool-java-bin "/bin/java -cp /usr/share/languagetool:/usr/share/java/languagetool/*")))

(use-package flyspell
  :ensure t
  :bind ("C-." . flyspell-correct-word-before-point))

(use-package pandoc-mode
  :ensure t)

(use-package markdown-mode
  :ensure t
  :config (progn
	    (add-hook 'markdown-mode-hook 'visual-line-mode)
	    (add-hook 'markdown-mode-hook 'pandoc-mode)
	    (add-hook 'markdown-mode-hook 'flyspell-mode)
	    (add-hook 'markdown-mode-hook
		      (lambda ()
			(company-mode 0)
			(smartparens-mode 0)
			(setq left-margin-width 2)
			(setq right-margin-width 2)
			(set-window-buffer nil (current-buffer))))))



;; Custom file extensions
(add-to-list 'auto-mode-alist
	     '("\\.note\\'" . (lambda ()
				(markdown-mode)
				(pandoc-set-write "html")
				;;(add-hook 'after-save-hook 'pandoc-run-pandoc)
				(setq buffer-face-mode-face
				      '(:family "Cambria" :height 130 :width semi-condensed))
				(buffer-face-mode))))

(add-to-list 'auto-mode-alist
	     '("\\.writer\\'" . (lambda ()
				  (markdown-mode)
				  (pandoc-set-write "odt")
				  (setq buffer-face-mode-face
					'(:family "Cambria" :height 130 :width semi-condensed))
				  (buffer-face-mode))))


(add-to-list 'load-path "~/.emacs.d/lisp/warp")
(require 'warp)
(global-set-key (kbd "C-c C-w C-w") 'warp-mode) ;; Modify key bind as you want.

;; Set markdown converter(s)
(defvar my-warp-converters
  '(("\\.writer" t (lambda ()
		     `("pandoc"
		       "--read=markdown"
		       "--write=html"
		       ,(concat "--template="
				(expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
		       ,(concat "--css="
				(expand-file-name "~/.emacs.d/extra/pandoc/writer.css"))
		       )))

    ("\\.note" t (lambda ()
		    `("pandoc"
		      "--read=markdown"
		      "--write=html"
		      ,(concat "--template="
			       (expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
		      ,(concat "--css="
			       (expand-file-name "~/.emacs.d/extra/pandoc/note.css"))
		      )))

    ;; Fallback
    (markdown-mode t (lambda () '("hoedown")))

    ;; More go here
    ))




(setf warp-format-converter-alist my-warp-converters)



;; Below line is needed if you installed websocket npm module globally.
(setenv "NODE_PATH" "/home/kate/.nvm/v0.12.1/lib/node_modules")
;; or, if you have setup NODE_PATH in the shell
;; (setenv "NODE_PATH"
;;         (replace-regexp-in-string
;;          "\n+$" "" (shell-command-to-string "echo $NODE_PATH")))


(require 'warp-reload)
(global-set-key (kbd "C-c C-w C-r") 'warp-reload)



(use-package smartparens
  :ensure t
  :config (progn
	    (require 'smartparens-config)
	    (setq indent-line-function #'indent-according-to-mode)
	    (smartparens-global-mode 1)))

(use-package rainbow-delimiters
  :ensure t
  :config (progn
	    (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
	    (add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)))

(use-package company
  :ensure t
  :diminish company-mode
  :config (add-hook 'after-init-hook 'global-company-mode))


;; OCaml
(let ((opam-share (substring (shell-command-to-string "opam config var share") 0 -1)))
  (add-to-list 'load-path (concat opam-share "/emacs/site-lisp")))


;; Setup environment variables using opam
(dolist (var (car (read-from-string (shell-command-to-string "opam config env --sexp"))))
  (setenv (car var) (cadr var)))

;; Update the emacs path
;;(setq exec-path (split-string (getenv "PATH") path-separator))

;; Update the emacs load path
(add-to-list 'load-path (concat (getenv "OCAML_TOPLEVEL_PATH") "/../../share/emacs/site-lisp"))

(use-package ocp-indent
  :ensure t)

(use-package tuareg
  :ensure t
  :mode ("\\.\\(?:ml[ily]?\\)\\'" . tuareg-mode)
  :config  (progn 	     
	     ;; make OCaml-generated files invisible to filename completion
	     (mapc #'(lambda (ext) (add-to-list 'completion-ignored-extensions ext))
		   '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi" ".cmxs" ".cmt" ".annot"))))


;; ocp-index
;; "C-c TAB" to auto-complete ((global-set-key (kbd "KEY") 'auto-complete) to add your own binding)
;; "C-c t" to print the type of the identifier under cursor
;; "C-c ;" to jump to the definition of the identifier under cursor (use C-c C-; to do that in the current window)
;; "C-c :" to jump to the interface of the identifier under cursor (use C-c C-: to do that in the current window)
;; "C-c /" to lookup all occurences of the ident under point in the current project (ocp-grep)

(require 'ocp-index)
(add-hook 'tuareg-mode-hook #'ocp-index-mode)


(require 'company-ocp-index)
(defun enable-company-ocp-index ()
  (add-to-list (make-local-variable 'company-backends) 'company-ocp-index))
(add-hook 'tuareg-mode-hook 'enable-company-mode-ocp-index)

(use-package iedit
  :ensure t)

(use-package merlin
  :ensure t
  :mode ("\\.\\(?:ml[i]?\\)\\'" . merlin-mode)
  :config (progn
	    (setq merlin-command "~/.opam/system/bin/ocamlmerlin")
	    (add-to-list 'company-backends 'merlin-company-backend)
	    ;; (add-hook 'merlin-mode-hook 'company-mode)
	    (add-hook 'tuareg-mode-hook 'merlin-mode)))  ; needed only if ocamlmerlin not already in your PATH


;; (use-package company-irony
;;    :ensure t
;;    :config (progn
;; 	     (eval-after-load 'company
;; 	       '(add-to-list 'company-backends 'company-irony))

;; 	     ;; (optional) adds CC special commands to `company-begin-commands' in order to
;; 	     ;; trigger completion at interesting places, such as after scope operator
;; 	     ;;     std::|
;; 	     (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)))

(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config (yas-global-mode 1))


;; (use-package smart-mode-line
;;   :ensure t
;;   :init (progn (sml/setup)
;; 	       (sml/apply-theme 'automatic)))

