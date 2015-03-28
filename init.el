
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
 '(flyspell-default-dictionary "american")
 '(fringe-mode nil nil (fringe))
 '(ispell-local-dictionary "american")
 '(ispell-local-dictionary-alist
   (quote
    (("american" "[[:alpha:]]" "[^[:alpha:]]" "['’]" t
      ("-d" "en_US-w_accents")
      nil utf-8))))
 '(langtool-default-language "en")
 '(langtool-disabled-rules (quote ("EN_QUOTES")))
 '(langtool-java-bin "/usr/bin/java")
 '(langtool-mother-tongue "en")
 '(paradox-github-token t)
 '(sp-base-key-bindings (quote paredit))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#333333" :background "#FFFFFF"))))
 '(custom-face-tag ((t (:weight bold :height 1.0 :family "Liberation Mono"))))
 '(custom-group-tag-1 ((t (:foreground "red1" :weight bold :height 1.2 :family "Liberation Mono"))))
 '(custom-variable-tag ((t (:foreground "blue1" :weight bold :height 1.0 :family "Liberation Mono"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(fringe ((t (:background "white" :foreground "#9B9B9B"))))
 '(variable-pitch ((t (:family "Open Sans")))))


;;;;;;;;;;;;;;;
;; UTILITIES ;;
;;;;;;;;;;;;;;;
;; BECAUSE FUCK YOU, STALLMAN


(defun foldr (func end lst)
  "Reduce two-argument FUNCTION across SEQUENCE
\n(fn FUNCTION INITIAL )
\nsignature: (a -> b -> b) -> b -> a seq -> b"
  (if (null lst) end
    (funcall func (car lst) (foldr func end (cdr lst)))))

(defun foldl (func end lst)
  (if (null lst) end
    (foldl func (funcall func (car lst) end) (cdr lst))))


(add-to-list 'load-path "~/.emacs.d/lisp/")

;; cursor type
(setq-default cursor-type '(bar . 1))

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
    ("\\=u" . [?ū])
    ;; C-x 8 . enters a floating center dot.
    ;; However; pandoc with --smart creates ellipses out of ...
    ;; ("."    . [?…])
    ))



(cl-loop for (key . def) in custom-transl-char-map do
   (define-key 'iso-transl-ctl-x-8-map key def))

(global-set-key (kbd "<mouse-7>") '(lambda () (interactive) (scroll-left)))
(global-set-key (kbd "<mouse-6>") '(lambda () (interactive) (scroll-right)))

(setq-default truncate-lines 0)


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
(require 'diminish)                ;; :diminish and (diminish ...)
(require 'bind-key)                ;; :bind variant

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
  :bind (("<mouse-8>" . tabbar-backward)
	 ("<mouse-9>" . tabbar-forward))
  :init (tabbar-mode 1)
  :config (progn
	    (defun tabbar-add-tab (tabset object &optional append_ignored)
	      "Add to TABSET a tab with value OBJECT if there isn't one there yet.
If the tab is added, it is added at the beginning of the tab list,
unless the optional argument APPEND is non-nil, in which case it is
added at the end."
	      (let ((tabs (tabbar-tabs tabset)))
		(if (tabbar-get-tab object tabset)
		    tabs
		  (let ((tab (tabbar-make-tab object tabset)))
		    (tabbar-set-template tabset nil)
		    (set tabset (sort (cons tab tabs)
				      (lambda (a b)
					(string< (buffer-name (car a))
						 (buffer-name (car b))))))))))))

(add-to-list 'load-path "~/.emacs.d/lisp/Emacs-langtool")
(require 'langtool)
(setq langtool-java-bin "/usr/bin/java")
(setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*")
(setq langtool-mother-tongue "en")

(global-set-key "\C-x4w" 'langtool-check)
(global-set-key "\C-x4W" 'langtool-check-done)
(global-set-key "\C-x4l" 'langtool-switch-default-language)
(global-set-key "\C-x44" 'langtool-show-message-at-point)
(global-set-key "\C-x4c" 'langtool-correct-buffer)

;; (use-package langtool
;;   :ensure t
;;   :bind (("C-x 4 w" . langtool-check)
;; 	 ("C-x 4 W" . langtool-check-done)
;; 	 ("C-x 4 l" . langtool-switch-default-language)
;; 	 ("C-x 4 4" . langtool-show-message-at-point)
;; 	 ("C-x 4 c" . langtool-correct-buffer))
;;   :config (progn
;; 	    (setq langtool-language-tool-jar
;; 		  "/usr/share/java/languagetool/languagetool-commandline.jar")
;; 	    (setq langtool-java-bin "/bin/java -cp /usr/share/languagetool:/usr/share/java/languagetool/*")))


(use-package flyspell
  :ensure t
  :bind ("C-." . flyspell-correct-word-before-point))

;; smart quotes and en/em-dashes!
(use-package typo
  :ensure t
  :diminish "”“")

(use-package popup
  :ensure t)

(add-to-list 'load-path "~/.emacs.d/lisp/synosaurus")
(require 'synosaurus)


;; (use-package synosaurus
;;   :ensure t
;;   :config (progn
;; 	    (setq synosaurus-backend 'synosaurus-backend-wordnet)
;; 	    (setq synosaurus-choose-method 'popup)))

(use-package smartparens
  :ensure t
  :config (progn
	    (require 'smartparens-config)
	    (setq indent-line-function #'indent-according-to-mode)
	    (smartparens-global-mode 1)))

(use-package company
  :ensure t
  :diminish company-mode
  :config (progn
	    (add-hook 'after-init-hook 'global-company-mode)
	    (setq company-idle-delay 0)))

(use-package flycheck
  :ensure t)


(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config (yas-global-mode 1))


;; (use-package smart-mode-line
;;   :ensure t
;;   :init (progn (sml/setup)
;; 	       (sml/apply-theme 'automatic)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       AESTHETICS        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-hook 'visual-line-mode-hook '(lambda () (diminish 'visual-line-mode)))
(add-hook 'buffer-face-mode-hook '(lambda () (diminish 'buffer-face-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       PROGRAMMING LANGUAGES      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;
;; Markdown ;;
;;;;;;;;;;;;;;
(use-package pandoc-mode
  :ensure t)

(use-package markdown-mode
  :ensure t)

(autoload 'smart-quotes-mode "smart-quotes")

(defun markdown-mode-defaults ()

  ;; pretty mode-line name
  (setq mode-name "M⬇")

  ;; Minor modes
  (visual-line-mode +1)
  (pandoc-mode +1)
  (flyspell-mode +1)
  (company-mode -1)
  (smartparens-mode -1)
  ;(smart-quotes-mode +1)
  ;(typo-mode +1)
  
  ;; Margins
  (setq left-margin-width 2)
  (setq right-margin-width 2)
  (set-window-buffer nil (current-buffer)))
  

(add-hook 'markdown-mode-hook 'markdown-mode-defaults)

;; Custom file extensions
(defvar custom-markdown-modes
  '(

    ;; Special markdown mode. Used for writing major pieces of prose.
    ;; ODTs are preffered for generating output for sites like
    ;; Fanfiction.net
    ("\\.writer\\'" .
     (lambda ()
       (markdown-mode)

       ;; Just use pandoc's --smart flag.
       ;; It's better on my eyes anyways.
       ;; (typo-mode +1)
       ;; (smart-quotes-mode +1)
       
       ;; We generate odt's by default for upload to sites like Fanfiction.net       
       (cl-loop for (opt . val) in
       	     '((smart . t)
       	       (read . "markdown")
       	       (write . "odt")
       	       (output-dir . "/home/kate/Documents/Pandoc Output"))
	     do (pandoc--set opt val))
       
       (setq buffer-face-mode-face '(:family "Cambria"
					     :height 135
					     :width semi-condensed))
       (buffer-face-mode)
       (diminish 'buffer-face-mode "")))


    ;; Notes are similar, but generate htmls instead
    ;; Usually though, we just use warp-mode 
    ("\\.note\\'" .
     (lambda ()
       (markdown-mode)
       (pandoc-set-write "html")
       (setq buffer-face-mode-face '(:family "Cambria"
				     :height 135
				     :width semi-condensed))
       (buffer-face-mode)
       (diminish 'buffer-face-mode "")))))

(cl-loop for elt in custom-markdown-modes do (add-to-list 'auto-mode-alist elt))


;;;;;;;;;;
;; Warp ;;
;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/lisp/warp")
(require 'warp)
(require 'warp-reload)

(global-set-key (kbd "C-c C-w C-w") 'warp-mode)
(global-set-key (kbd "C-c C-w C-r") 'warp-reload)

;; Set markdown converter(s)
(defvar my-warp-converters

  ;; Written works need 'smart' quotes and proper dashes.
  '(("\\.writer" t (lambda ()
		     `("pandoc"

		       "--smart"
		       "--read=markdown"
		       "--write=html"
		       ,(concat "--template="
				(expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
		       ,(concat "--css="
				(expand-file-name "~/.emacs.d/extra/pandoc/writer.css"))
		       )))


    ;; Notes are similar to written works, but have a TOC
    ;; and are displayed in a wider main-content div
    ("\\.note" t (lambda ()
		    `("pandoc"
		      "--smart"
		      "--toc"
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


;;;;;;;;;;;
;; OCaml ;;
;;;;;;;;;;;
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


;;;;;;;;;;
;; LISP ;;
;;;;;;;;;;

(use-package rainbow-delimiters
  :ensure t)

;; generic lisp coding defaults
(defun lisp-coding-defaults ()
  (smartparens-strict-mode +1)
  (rainbow-delimiters-mode +1)
  (whitespace-mode -1))

(add-hook 'lisp-mode-hook 'lisp-coding-defaults)

;;;;;;;;;;;;;;;;
;; Emacs Lisp ;;
;;;;;;;;;;;;;;;;
(define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "C-c C-b") 'eval-buffer)

(file-truename "~/")

(defun recompile-elc-on-save ()
  "Recompile the .elc if it exists."
  (when (and (string-prefix-p (file-truename "~/") (file-truename buffer-file-name))
	     (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (emacs-lisp-byte-compile)))



(defun emacs-lisp-mode-defaults ()
  (run-hooks 'lisp-coding-defaults)
  (eldoc-mode +1)
  (add-hook 'emacs-lisp-mode-hook 'recompile-elc-on-save nil t)
  (rainbow-delimiters-mode +1)
  (setq mode-name "el"))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-defaults)









;; (use-package company-irony
;;    :ensure t
;;    :config (progn
;; 	     (eval-after-load 'company
;; 	       '(add-to-list 'company-backends 'company-irony))

;; 	     ;; (optional) adds CC special commands to `company-begin-commands' in order to
;; 	     ;; trigger completion at interesting places, such as after scope operator
;; 	     ;;     std::|
;; 	     (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)))
