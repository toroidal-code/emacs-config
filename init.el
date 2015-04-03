
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" "1f86aca5802400b1e773bb8dd32ccbf5d1ffc74706b9a1405265900bde423c62" "74be6cbcbcd3eaa7fed8fb43e55c9f4c7b81d91de9c33ce914ba3f764f6126b5" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "d46b5a32439b319eb390f29ae1810d327a2b4ccb348f2018b94ff22f410cb5c4" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(cycle-themes-mode t)
 '(desktop-save-mode t)
 '(fci-rule-color "#073642")
 '(flyspell-default-dictionary "american")
 '(fringe-mode nil nil (fringe))
 '(helm-imenu-fuzzy-match t)
 '(helm-mode t)
 '(helm-recentf-fuzzy-match t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(indent-tabs-mode nil)
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
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (bind-key helm use-package package-utils yasnippet typopunct typo tuareg tabbar synosaurus sublimity solarized-theme smartparens smart-mode-line rw-language-and-country-codes rw-ispell rw-hunspell request req-package rainbow-mode rainbow-delimiters popwin popup paredit paradox pandoc-mode ocp-indent neotree merlin markdown-mode+ load-dir leuven-theme langtool js2-mode js-comint iedit ido-ubiquitous helm-ls-git helm-descbinds flymake-jslint flymake-coffee flycheck evil esxml csv-mode company coffee-mode cl-generic)))
 '(paradox-github-token t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-default-separator (quote utf-8))
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sp-base-key-bindings (quote paredit))
 '(tab-stop-list
   (quote
    (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-face-tag ((t (:weight bold :height 1.0 :family "Liberation Mono"))))
 '(custom-group-tag ((t (:foreground "blue1" :weight bold :height 1.1))))
 '(custom-group-tag-1 ((t (:foreground "red1" :weight bold :height 1.0 :family "Liberation Mono"))))
 '(custom-variable-tag ((t (:foreground "blue1" :weight bold :height 1.0 :family "Liberation Mono"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Open Sans")))))


;;;;;;;;;;;;;;;
;; Utilities ;;
;;;;;;;;;;;;;;;

(defun foldr (func end lst)
  "Reduce two-argument FUNCTION across SEQUENCE
\n(fn FUNCTION INITIAL )
\nsignature: (a -> b -> b) -> b -> a seq +> b"
  (if (null lst) end
    (funcall func (car lst) (foldr func end (cdr lst)))))

(defun foldl (func end lst)
  (if (null lst) end
    (foldl func (funcall func (car lst) end) (cdr lst))))

(defun compose (f g)
  "Compose two functions together.
\nsignature (b -> c) -> (a -> b) +> a -> c"
  `(lambda (x) (,f (,g x))))


;;;;;;;;;;;;;;;;;
;; Main Things ;;
;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/synonymous")

;; Cursor style
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
    ;; C-x 8 . entennrs a floating center dot.
    ;; However; pandoc with --smart creates ellipses out of ...
    ;; ("."    . [?…])
    ))

(cl-loop for (key . def) in custom-transl-char-map do
   (define-key 'iso-transl-ctl-x-8-map key def))

;; Horizontal scrolling
(global-set-key (kbd "<mouse-7>") '(lambda () (interactive) (scroll-left)))
(global-set-key (kbd "<mouse-6>") '(lambda () (interactive) (scroll-right)))

;; Just, don't truncate lines, please
(setq-default truncate-lines 0)


;;;;;;;;;;;;;;
;; Packages ;;
;;;;;;;;;;;;;;
(require 'package) ;; You might already have this line
(package-initialize) ;; You might already have this line
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package))
  (package-refresh-contents))

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; :diminish and (diminish ...)
(require 'bind-key)                ;; :bind variant


(require 'use-package)
(defconst use-package-font-lock-keywords
  '(("(\\(use-package\\)\\_>[ \t']*\\(\\(?:\\sw\\|\\s_\\)+\\)?"
     (1 font-lock-keyword-face)
     (2 font-lock-constant-face nil t))))
(font-lock-add-keywords 'emacs-lisp-mode use-package-font-lock-keywords)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(use-package package-utils
  :ensure t)
;;(require 'package-utils)
;;(package-utils-upgrade-all)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       AESTHETICS        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Themes
(use-package leuven-theme
  :config (load-theme 'leuven t t))

(use-package solarized-theme
  :config (progn (load-theme 'solarized-dark t t)
                 (load-theme 'solarized-light t t)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai/")
(load-theme 'monokai t t)

;; test for each frame or console
;; (defun switch-to-term-color-if-necessary (frame)
;;   (set-variable 'color-theme-is-global nil)
;;   (select-frame frame)
;;   (load-theme 'monokai t)
;;   (when (not window-system)
;;     (custom-theme-set-faces 'monokai `(default ((t (:background nil)))))))
;; (add-hook 'after-make-frame-functions 'switch-to-term-color-if-necessary)


(setq cycle-themes-theme-list
      '(leuven monokai solarized-dark))

(require 'cycle-themes)
(add-hook 'cycle-themes-after-cycle-hook
          #'(lambda ()
              (set-face-attribute 'mode-line nil :box (face-background 'mode-line)
                                  :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
                                               (face-background 'mode-line)))
              (set-face-attribute 'mode-line-inactive nil :box (face-background 'mode-line)
                                  :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
                                               (face-background 'mode-line)))
              (set-face-attribute 'header-line nil :box nil)
              (cl-loop for frame in (frame-list) do
                       (set-face-attribute 'fringe frame :background (face-background 'default)))))

(add-hook 'desktop-after-read-hook #'(lambda () (cycle-themes-mode)))

;; Smart Mode line
;; (use-package smart-mode-line
;;   :ensure t
;;   :init (progn (sml/setup)
;; 	       (sml/apply-theme 'automatic)))


;; Powerline
(add-to-list 'load-path "~/.emacs.d/themes/powerline")
(require 'powerline)
;;(powerline-vimish-theme)


;; Popup help buffers-menu-buffer-name-length
(use-package popwin
  :ensure t
  :config (progn
            (push 'semantic-symref-results-mode popwin:special-display-config)
            (popwin-mode +1)))


(use-package ido-ubiquitous
  :config (ido-ubiquitous-mode +1))

(ido-mode +1)

(use-package tabbar-ruler
  :ensure t
  :init (progn
            (setq tabbar-ruler-global-tabbar t)
            (setq tabbar-use-images nil)
            (setq tabbar-ruler-movement-timer-delay 1000000)))

(defun tabbar-add-tab (tabset object &optional append_ignored)
  "Add to TABSET a tab with value OBJECT if there isn't one there yet.
The tab is added in a sorted position."
  (unless (tabbar-get-tab object tabset)
    (let* ((tabs (cons (tabbar-make-tab object tabset)
                      (tabbar-tabs tabset)))
           (sorted-tabs (cl-sort tabs 'string-lessp
                                 :key (compose 'buffer-name 'first))))
      (tabbar-set-template tabset nil)
      (set tabset sorted-tabs))))


(add-hook 'cycle-themes-after-cycle-hook
          #'(lambda ()
              (progn (tabbar-reset)
                     (mapcar 'tabbar-install-faces (frame-list))
                     (tabbar-display-update))))

(add-hook 'desktop-after-read-hook
          #'(lambda ()
              (dolist (frame (frame-list))
                (modify-frame-parameters frame '((tabbar-cache . nil))))))


;; Diminish unnecessary minor-modes
(add-hook 'visual-line-mode-hook #'(lambda () (diminish 'visual-line-mode)))
(add-hook 'buffer-face-mode-hook #'(lambda () (diminish 'buffer-face-mode)))

;; (use-package helm)
;; (use-package helm-ls-git
;;   :ensure t)
;;(require 'my-helm-config)


;;;;;;;;;;;
;; CEDET ;;
;;;;;;;;;;;

(el-get-bundle cedet)
(add-to-list 'load-path "~/.emacs.d/el-get/cedet/contrib")
(require 'cedet-devel-load)

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Load CEDET CONTRIB.
(require 'cedet-contrib-load)

;; Enable global folding
(require 'semantic-tag-folding)
(add-hook 'semantic-mode-hook 'global-semantic-tag-folding-mode)
(global-set-key (kbd  "C-c . C-f") 'senator-fold-tag-toggle)

;; Load up semantic helpers
(setq semantic-default-submodes
      '(global-semantic-idle-scheduler-mode
        global-semanticdb-minor-mode
        global-semantic-idle-summary-mode
        global-semantic-mru-bookmark-mode
        ;; global-cedet-m3-minor-mode
        global-semantic-decoration-mode
        ;; global-semantic-stickyfunc-mode
        ;; global-semantic-idle-completions-mode
        global-semantic-highlight-func-mode
        global-semantic-idle-local-symbol-highlight-mode))

;; Enable semantic
(semantic-mode +1)
(semantic-load-code-helpers-1)
(semantic-load-enable-gaudy-code-helpers-1)
(semantic-load-enable-excessive-code-helpers-1)

(el-get-bundle ecb)

;;;;;;;;;;;;;;
;; LANGTOOL ;;
;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/Emacs-langtool")

(require 'langtool)

(setq langtool-java-bin "/usr/bin/java")
(setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*")
(setq langtool-mother-tongue "en")

(global-set-key (kbd "C-x 4 w") 'langtool-check)
(global-set-key (kbd "C-x 4 W") 'langtool-check-done)
(global-set-key (kbd "C-x 4 l") 'langtool-switch-default-language)
(global-set-key (kbd "C-x 4 4") 'langtool-show-message-at-point)
(global-set-key (kbd "C-x 4 c") 'langtool-correct-buffer)

;; (use-package langtool
;; :ensure t
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

;; TODO: 
;(add-to-list 'load-path "~/.emacs.d/lisp/synosaurus")
;(require 'synosaurus)
;; (use-package synosaurus
;;  :ensure t
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


(use-package neotree
  :ensure t
  :config (setq neo-persist-show nil))

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
(setf my-warp-converters

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

    ("\\README.md" t (lambda ()
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
(setenv "NODE_PATH" "/usr/lib/node_modules/")
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
(cl-loop for (name val)
	 in (car (read-from-string (shell-command-to-string "opam config env --sexp")))
	 do (setenv name val))

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
(require 'md-readme)
(define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "C-c C-b") 'eval-buffer)

(file-truename "~/")

(defun recompile-elc-on-save ()
  "Recompile the .elc if it exists."
  (when (and (string-prefix-p (file-truename "~/") (file-truename buffer-file-name))
	     (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (emacs-lisp-byte-compile)))

(defun emacs-lisp-mode-defaults ()
  (setq mode-name "el")
  (add-hook 'emacs-lisp-mode-hook 'lisp-coding-defaults)
  (add-hook 'emacs-lisp-mode-hook 'recompile-elc-on-save nil t)
  (eldoc-mode +1)
  (rainbow-delimiters-mode +1))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-defaults)
(add-hook 'eldoc-mode-hook '(lambda () (diminish 'eldoc-mode)))


;; (use-package company-irony
;;    :ensure t
;;    :config (progn
;; 	     (eval-after-load 'company
;; 	       '(add-to-list 'company-backends 'company-irony))

;; 	     ;; (optional) adds CC special commands to `company-begin-commands' in order to
;; 	     ;; trigger completion at interesting places, such as after scope operator
;; 	     ;;     std::|
;; 	     (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)))
