;;; init.el --- My init file
;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(clang-format-style "Google")
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("d3d400ddcb2458a3859ae9126a14409120422f21f9fad90f0ca66c5596e5ba36" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "4cc896bc19f72a1228dbd869b1a41848e2412199bd415b67848ffb1f58b5306b" "4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" default)))
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(ecb-compile-window-height 6)
 '(ecb-options-version "2.40")
 '(ecb-show-tags
   (quote
    ((default
       (include collapsed nil)
       (parent collapsed nil)
       (type flattened nil)
       (variable collapsed nil)
       (function flattened nil)
       (label hidden nil)
       (t collapsed nil))
     (c++-mode
      (include collapsed nil)
      (parent collapsed nil)
      (type flattened nil)
      (variable collapsed access)
      (function flattened nil)
      (function collapsed nil)
      (label hidden nil)
      (t collapsed nil))
     (c-mode
      (include collapsed nil)
      (parent collapsed nil)
      (type flattened nil)
      (variable collapsed access)
      (function flattened nil)
      (function collapsed access)
      (label hidden nil)
      (t collapsed nil))
     (bovine-grammar-mode
      (keyword collapsed name)
      (token collapsed name)
      (nonterminal flattened name)
      (rule flattened name)
      (t collapsed nil))
     (wisent-grammar-mode
      (keyword collapsed name)
      (token collapsed name)
      (nonterminal flattened name)
      (rule flattened name)
      (t collapsed nil))
     (texinfo-mode
      (section flattened nil)
      (def collapsed name)
      (t collapsed nil)))))
 '(ecb-source-path
   (quote
    (("/home/kate/" "home")
     ("/home/kate/git" "git")
     ("/home/kate/code" "code")
     ("/home/kate/github" "github")
     ("/home/kate/Google Drive/Writer" "Writer")
     ("/" "/"))))
 '(ecb-tag-display-function
   (quote
    ((default . ecb--semantic-format-tag-uml-abbreviate))))
 '(ede-project-directories
   (quote
    ("/home/kate/github/sedlex/src/lib" "/home/kate/github/sedlex" "~/github/sedlex/" "~/github/kiln/")))
 '(flycheck-c/c++-googlelint-executable "/usr/bin/cpplint")
 '(flycheck-checkers
   (quote
    (irony ocaml-merlin ada-gnat asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy jade javascript-eslint javascript-jshint javascript-gjslint javascript-jscs javascript-standard json-jsonlint json-python-json less luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint rst-sphinx rst ruby-rubocop ruby-rubylint ruby ruby-jruby rust-cargo rust sass scala scala-scalastyle scss-lint scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim sql-sqlint tex-chktex tex-lacheck texinfo verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby c/c++-googlelint)))
 '(flycheck-haskell-hlint-executable "/home/kate/.cabal/bin/hlint")
 '(ggtags-global-output-format (quote grep))
 '(ggtags-use-idutils t)
 '(global-flycheck-mode t)
 '(global-semantic-idle-summary-mode t)
 '(helm-imenu-fuzzy-match t)
 '(helm-recentf-fuzzy-match t)
 '(hs-lint-command "/home/kate/.cabal/bin/hlint")
 '(indent-tabs-mode nil)
 '(irony-additional-clang-options (quote ("-std=c++14")))
 '(irony-lighter " i")
 '(ispell-local-dictionary "american")
 '(ispell-local-dictionary-alist
   (quote
    (("american" "[[:alpha:]]" "[^[:alpha:]]" "['’]" t
      ("-d" "en_US-w_accents")
      nil utf-8))))
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (cmake-ide exwm-x caml company concurrent ctable dash deferred evil f flycheck git-commit haml-mode haskell-mode hydra inf-ruby irony macrostep popup s undo-tree cmake-mode helm-core magit-popup rich-minority seq slime sly with-editor yasnippet yard-mode yaml-mode xterm-color web-mode use-package typo tuareg sublimity srefactor sr-speedbar solarized-theme sml-modeline sml-mode smartparens smart-mode-line sly-company slime-company slim-mode shut-up sass-mode rvm rubocop rtags rspec-mode robe request rainbow-mode rainbow-delimiters px powerline popwin pandoc-mode package-utils package-build ocp-indent neotree mode-icons mips-mode markdown-mode magit lua-mode latex-preview-pane late-night-theme key-chord julia-mode js2-mode iedit ido-ubiquitous helm google-c-style git ghc ggtags flycheck-irony flycheck-haskell flycheck-google-cpplint exec-path-from-shell evil-god-state ert-expectations epc emacs-eclim ecb diff-hl csharp-mode cpputils-cmake company-shell company-irony company-c-headers coffee-mode cmake-font-lock clang-format bundler buffer-move bison-mode auto-complete aurel)))
 '(paradox-github-token t)
 '(powerline-default-separator (quote utf-8))
 '(powerline-height 20)
 '(projectile-global-mode t)
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column 0.8)
     (whitespace-style face tabs trailing lines-tail)
     (cmake-ide-dir . "/home/kate/github/brandt-gc/build")
     (cmake-ide-dir . "/home/kate/github/cppspec/build")
     (cmake-ide-dir . "/home/kate/github/cppspec")
     (eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(scroll-bar-mode nil)
 '(semantic-decoration-styles
   (quote
    (("semantic-tag-folding")
     ("semantic-decoration-on-includes" . t)
     ("semantic-tag-boundary" . t))))
 '(semantic-ectags-program-list
   (quote
    ("ctags-exuberant" "ectags" "ctags" "/usr/bin/ctags")))
 '(sml-indent-level 2)
 '(sml/theme (quote dark))
 '(sp-base-key-bindings (quote paredit))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-default-width 25)
 '(sr-speedbar-max-width 30)
 '(sr-speedbar-right-side nil)
 '(sublimity-attractive-centering-width 79)
 '(timeclock-mode-line-display t)
 '(tool-bar-mode nil)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Open Sans")))))




;;;;; REQUIRES ;;;;;

;;; Commentary:
;; 

(require 'cl-lib)
(require 'package)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       CONFIG OPTIONS       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar-local install-extra-tools t
  "Should we try and install extra tools for Emacs?")


;;;;;;;;;;;;;;;;;;;;;;;
;; Functional Things ;;
;;;;;;;;;;;;;;;;;;;;;;;

(defun foldr (func end lst)
  "Reduce two-argument FUNC, END being the initial value, over LST.
\n(fn FUNCTION INITIAL )
\nsignature: (a -> b -> b) -> b -> a seq +> b"
  (if (null lst) end
    (funcall func (car lst) (foldr func end (cdr lst)))))


(defun foldl (func end lst)
  (if (null lst) end
    (foldl func (funcall func (car lst) end) (cdr lst))))


(defun compose (f g)
  "Compose two functions F and G together.
\nsignature (b -> c) -> (a -> b) +> a -> c"
  `(lambda (x) (,f (,g x))))

(defun expand-alist (alist)
  "Expand a nested ALIST."
  (cl-loop for (keys . vals)
           in alist
           append (mapcar #'(lambda (key) (cons key vals)) keys)))


(defun djcb-popup (title msg &optional icon sound)
  "Show a popup if we're on X, or echo it otherwise;
TITLE is the title of the message, MSG is the context,
Optionally, you can provide an ICON and a SOUND to be played."

  (interactive)
  (when sound (shell-command
                (concat "mplayer -really-quiet " sound " 2> /dev/null")))
  (if (eq window-system 'x)
    (shell-command (concat "notify-send "
                     (if icon (concat "-i " icon) "")
                     " '" title "' '" msg "'"))
    ;; text only version
    (message (concat title ": " msg))))


(defun flatten (x)
  "Recursively flatten nested list X."
  (cond ((null x) nil)
        ((listp x) (append (flatten (car x)) (flatten (cdr x))))
        (t (list x))))


;;;;;;;;;;;;;;;
;; Utilities ;;
;;;;;;;;;;;;;;;

;;(require 'native-package)

;;;;;;;;;;;;;;;;;
;; Main Things ;;
;;;;;;;;;;;;;;;;;

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
    ("\\=u" . [?ū])
    ("l"    . [?λ])
    ;; c-x 8 . enters a floating center dot.
    ;; However; pandoc with --smart creates ellipses out of ...
    ;; ("."    . [?…])
    ))


(cl-loop for (key . def) in custom-transl-char-map do
        (define-key 'iso-transl-ctl-x-8-map key def))


(global-set-key (kbd "C-c \\") #'(lambda () (interactive) (insert-char ?λ)))


;; use Shift+arrow_keys to move cursor around split panes
;; when cursor is on edge, move to the other side, as in a toroidal space
(require 'windmove)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings)
  (setf windmove-wrap-around t ))

;; horizontal scrolling
(put 'scroll-left 'disabled nil)
(put 'scroll-right 'disabled nil)
(global-set-key (kbd "<mouse-7>") #'(lambda () (interactive) (scroll-left)))
(global-set-key (kbd "<mouse-6>") #'(lambda () (interactive) (scroll-right)))

;; Alt backspace mappings (for when we're not using EVIL, such as prose
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

;; Bind help to C-? (It's already <f1> too)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)

;; Bind the <menu> key to opening a menu-bar dropdown,
;; in in the event of disabling the menu-bar.
(global-set-key (kbd "<menu>") 'menu-bar-open)

;; Bind C-x w to 'count-words'
(global-set-key (kbd "C-x w") 'count-words)

;; Just, don't truncate lines, please
(setq-default truncate-lines 0)

;; Cursor style
(setq-default cursor-type '(bar . 1))
(setq blink-cursor-mode t)

;; No tool-bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; No scroll-bar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Line-numbering
(add-hook 'prog-mode-hook #'(lambda () (linum-mode +1)))

(require 'cus-edit)
(set-face-attribute 'custom-face-tag nil
                    :family "Liberation Mono"
                    :height 1.1)


(set-face-attribute 'custom-variable-tag nil
                    :family "Liberation Mono"
                    :height 1.1)

;;;;;;;;;;;;;;
;; Packages ;;
;;;;;;;;;;;;;;

;; (require 'package-prioritize)

(package-initialize) ;; You might already have this line
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(unless package-archive-contents (package-refresh-contents))

;; Prefer melpa-stable. Because it's stable.
(setf package-archive-priority
      '("melpa-stable" "melpa" "marmalade" "gnu"))

;; use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-pin "melpa-stable")
(setq use-package-always-ensure nil)

(require 'diminish)
(require 'bind-key)

;; Package-utils helpers
(use-package package-utils)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(use-package exec-path-from-shell
  :ensure t)

(setf exec-path-from-shell-variables '("PATH" "MANPATH" "NODE_PATH"))

(when (and (memq window-system '(ns x w32))
           (memq system-type '(gnu gnu/linux darwin windows-nt)))
  (exec-path-from-shell-initialize))


(use-package xterm-color
  :ensure t)

;; comint install
(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions))
       (setq font-lock-unfontify-region-function 'xterm-color-unfontify-region))

;; ;; comint uninstall
;; (progn (remove-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
;;        (add-to-list 'comint-output-filter-functions 'ansi-color-process-output)
;;        (setq font-lock-unfontify-region-function 'font-lock-default-unfontify-region))

(require 'eshell)

(add-hook 'eshell-mode-hook
          (lambda ()
            (setq xterm-color-preserve-properties t)))

(add-to-list 'eshell-preoutput-filter-functions 'xterm-color-filter)
(setq eshell-output-filter-functions (remove 'eshell-handle-ansi-color eshell-output-filter-functions))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       AESTHETICS        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Leuven
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/leuven/")
(load-theme 'leuven t t)

;; ;; Github
;; (use-package github-theme
;;   :ensure t
;;   :config (load-theme 'github-theme t t))

;; Base16
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/base16/")
(load-theme 'base16-default-light t t)

;; Base16
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/github/")
(load-theme 'github t t)

;; Solarized
(use-package solarized-theme :ensure t)
(setq solarized-distinct-fringe-background t) ;; make the fringe stand out from the background
(setq solarized-use-less-bold t) ;; use less bolding
(load-theme 'solarized-dark t t)
(load-theme 'solarized-light t t)

;; Ample
;; (use-package ample-theme
;;   :config (progn
;;             (load-theme 'ample t t)
;;             (load-theme 'ample-flat t t)
;;             (load-theme 'ample-light t t)))

(use-package late-night-theme
  :config (load-theme 'late-night t t))

;; Monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai/")
(load-theme 'monokai-extended t t)

;; cycle-themes
(add-to-list 'load-path "~/.emacs.d/lisp/cycle-themes")
(require 'cycle-themes)
(setq cycle-themes-theme-list
      '(leuven github monokai-extended late-night solarized-dark solarized-light))
;; (define-key cycle-themes-mode-map (kbd "C-c C-c C-t") 'cycle-themes)



(defun flatten-mode-line ()
  (set-face-attribute
   'mode-line nil
   :box (face-background 'mode-line)
   :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
		(face-background 'mode-line)))

  (set-face-attribute
   'mode-line-inactive nil
   :box (face-background 'mode-line)
   :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
		(face-background 'mode-line))))

(defun normalize-fringes ()
  "Make the fringes the same color as the background."
  (unless (and (boundp 'ecb-active)
               ecb-active)
    (set-face-attribute 'fringe nil :background (face-background 'default))
    (set-face-attribute 'linum nil :background (face-background 'default))))

(defun set-term-colors ()
  "Set the term colors to the same as the theme"
  (set-face-attribute 'term nil
		      :background (face-background 'default)
		      :foreground (face-foreground 'default)))

(add-hook 'cycle-themes-after-cycle-hook #'flatten-mode-line)
(add-hook 'cycle-themes-after-cycle-hook #'normalize-fringes)
;; (add-hook 'cycle-themes-after-cycle-hook #'set-term-colors)

(cycle-themes-mode)


;; Custom Powerline
(add-to-list 'load-path "~/.emacs.d/themes/powerline")
(require 'powerline)
;;(powerline-vimish-theme)


;; A fancy tab-bar
(add-to-list 'load-path "~/.emacs.d/lisp/tabbar")
(add-to-list 'load-path "~/.emacs.d/lisp/tabbar-ruler")
(use-package tabbar-ruler
  :pin manual
  :init (progn
          (setq tabbar-use-images nil)
          (setq tabbar-ruler-global-tabbar t)
          (setq tabbar-ruler-movement-timer-delay 1000000))
  :config (setq tabbar-buffer-groups-function 'tabbar-buffer-groups))

(global-key-binding (kbd "<mouse-9>") #'((lambda () (interactive) (tabbar-forward))))
(global-key-binding (kbd "<mouse-8>") #'((lambda () (interactive) (tabbar-backward))))

(global-key-binding (kbd "C-c C-H-t") #'((lambda () (interactive) (tabbar-forward-group))))
(global-key-binding (kbd "C-c C-H-h") #'((lambda () (interactive) (tabbar-backward))))
(global-key-binding (kbd "C-c C-H-n") #'((lambda () (interactive) (tabbar-forward))))
(global-key-binding (kbd "C-c C-H-c") #'((lambda () (interactive) (tabbar-backward-group))))

;; A custom function to make the tabs sorted alphabetically
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


;; Tabbar's cache _hates_ desktop.el
(add-hook 'desktop-after-read-hook
          #'(lambda ()
              (dolist (frame (frame-list))
                (modify-frame-parameters frame '((tabbar-cache . nil))))))


;; Whenever we change a theme, make sure to update the tabbar
(add-hook 'cycle-themes-after-cycle-hook
          #'(lambda ()
              (progn (tabbar-reset)
                     (mapc 'tabbar-install-faces (frame-list))
                     (tabbar-display-update))))


;; Diminish unnecessary minor-modes
(add-hook 'visual-line-mode-hook #'(lambda () (diminish 'visual-line-mode)))
(add-hook 'buffer-face-mode-hook #'(lambda () (diminish 'buffer-face-mode)))



(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))


(use-package sr-speedbar
  :bind ("C-c s" . sr-speedbar-toggle))

;;;;;;;;;;;;;
;; Generic ;;
;;;;;;;;;;;;;

;; Helm
;; (use-package helm
;;   :ensure t)
;; (use-package helm-ls-git
;;   :ensure t)
;; (require 'my-helm-config)

(use-package s
  :config (require 's))

(use-package ido-ubiquitous
  :config (ido-ubiquitous-mode +1))

(ido-mode +1)

(use-package key-chord
  :config (key-chord-mode +1))

;; Extensible Vi Layer
(use-package evil
  :config (key-chord-define evil-insert-state-map  "ht" 'evil-normal-state))

;; God mode
(use-package god-mode
  :bind ("C-." . god-local-mode))

;; Ensure god-mode and evil work well together
(use-package evil-god-state
  :config (progn
            (evil-define-key 'normal global-map "," 'evil-execute-in-god-state)
            (evil-define-key 'god global-map [escape] 'evil-god-state-bail)))

(use-package magit
  :config (progn
	    (setq magit-last-seen-setup-instructions "1.4.0")))


;; Hl-line
(use-package diff-hl
  :config (add-hook 'prog-mode-hook 'diff-hl-mode))


;; Etags for emacs
(use-package ggtags)

;; Popup help buffers
(use-package popwin
  :config (progn
            (push 'semantic-symref-results-mode popwin:special-display-config)
            (popwin-mode +1)))

(use-package sublimity
  :init (progn
	  (require 'sublimity)
	  ;; (require 'sublimity-scroll)
	  ;; (require 'sublimity-map)
	  (require 'sublimity-attractive)
	  )
  :bind ("C-c C-s C-s" . sublimity-mode)
  :config (progn
	    ;;(sublimity-map-set-delay nil)
	    ))

;; (add-hook 'sublimity-map-setup-hook #'(lambda () (interactive)
;; 					(visual-line-mode)
;; 					;;(tabbar-local-mode)
;; 					))

;; Flycheck linter
(use-package flycheck
  :config (add-hook 'after-init-hook #'global-flycheck-mode))

;; Popup
(use-package popup)

;; Pretty parentheses
(use-package rainbow-delimiters)

;; Smart parentheses
(use-package smartparens
  :bind ("C-c C-s s" . smartparens-strict-mode)
  :config (progn
            (require 'smartparens-config)
            (smartparens-global-mode 1)))

(add-hook 'smartparens-mode-hook #'(lambda () (interactive)
                                     (let ((lighter (if smartparens-strict-mode "()/s" "()")))
                                       (diminish 'smartparens-mode lighter))))

;; Company auto-completion
(use-package company
  :diminish company-mode
  :config (progn
            (add-hook 'after-init-hook 'global-company-mode)
	    (setq company-tooltip-limit 20)                      ; bigger popup window
	    (setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
	    (setq company-echo-delay 0)                          ; remove annoying blinking
            ;; Saner selection key
            (define-key company-active-map (kbd "C-n") 'company-select-next)
            (define-key company-active-map (kbd "C-p") 'company-select-previous)
            (define-key company-active-map (kbd "C-h") 'company-show-doc-buffer)
            (define-key company-active-map (kbd "C-SPC") 'company-complete)
            (define-key company-active-map (kbd "M-.") 'company-show-location)))

;; Code snippets
(use-package yasnippet
  :diminish yas-minor-mode
  :config (progn
	    (yas-reload-all)
	    (yas-global-mode)))

;; Undo-tree
(use-package undo-tree
  :diminish "undotree" ;;"⎌"
  )

;; File browser
(use-package neotree
  :init (setq neo-theme 'nerd)
  :config (progn
            (setq neo-persist-show nil)))

(use-package aurel)

;; Whitespace-mode
;; (use-package whitespace
;;   :ensure t
;;   :config (progn
;;             ;; automatically clean up bad whitespace
;;             (setq whitespace-action '(auto-cleanup))
;;             ;; only show bad whitespace
;;             (setq whitespace-style '(trailing
;;                                      space-before-tab
;;                                      indentation empty
;;                                      space-after-tab))

;;             (global-whitespace-mode)))

;; Multiple-word edit bound to C-;
(use-package iedit)

;; Flyspell spellchecker
(use-package flyspell
  :diminish "FlyS"
  :bind ("C-," . flyspell-correct-word-before-point))

;; Thesaurus
(require 'synonymous)

;; smart quotes and en/em-dashes
(use-package typo :diminish "”“")

;; A simpler smart quotes mode
(autoload 'smart-quotes-mode "smart-quotes")

;; Latex-fragments preview
(use-package px
  :config (progn
            (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5)))
  :bind ("C-c C-x C-l" . px-toggle))

;; Pandoc conversion
(use-package pandoc-mode)

;; ;; Langtool
;; (use-package langtool
;;   :ensure t
;;   :bind (("C-x 4 w" . langtool-check)
;;          ("C-x 4 W" . langtool-check-done)
;;          ("C-x 4 l" . langtool-switch-default-language)
;;          ("C-x 4 4" . langtool-show-message-at-point)
;;          ("C-x 4 c" . langtool-correct-buffer))
;;   :config (progn
;;             (setq langtool-java-bin "/usr/bin/java")
;;             (setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*")
;;             (setq langtool-mother-tongue "en")
;;             (langtool-default-language "en")
;;             (setq langtool-disabled-rules '("EN_QUOTES"))))

;; Auto-magic indenting pasted code
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                (member major-mode '(emacs-lisp-mode lisp-mode
                                     clojure-mode    scheme-mode
                                     haskell-mode    ruby-mode
                                     rspec-mode      python-mode
                                     c-mode          c++mode
                                     objc-mode       latex-mode
                                     plain-tex-mode  tuareg-mode
                                     julia-mode      js2-mode
                                     coffee-mode))
                (let ((mark-even-if-inactive transient-mark-mode))
                  (indent-region (region-beginning) (region-end) nil))))))

;; Swap buffer positions
(use-package buffer-move
  :bind (("<C-S-up>" . buf-move-up)
         ("<C-S-down>" . buf-move-down)
         ("<C-S-left>" . buf-move-left)
         ("<C-S-right>" . buf-move-right)))



;; ====================
;; insert date and time

(defvar current-date-time-format "%Y:%m:%d %H:%M:%S"
  "Format of date to insert with `insert-current-date-time' func.
See help of `format-time-string' for possible replacements")

(defvar current-time-format "%a %H:%M:%S"
  "Format of date to insert with `insert-current-time' func.
Note the weekly scope of the command's precision.")

(defun insert-current-date-time ()
  "Insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
  (interactive)
  (insert (format-time-string current-date-time-format (current-time)))
  (insert "\n"))

(defun insert-current-time ()
  "Insert the current time (1-week scope) into the current buffer."
  (interactive)
  (insert (format-time-string current-time-format (current-time)))
  (insert "\n"))




;;;;;;;;;;;
;; CEDET ;;
;;;;;;;;;;;
(setq semantic-ectags-program "/usr/bin/ctags")

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

(require 'semantic/db-global)
(semanticdb-enable-gnu-global-databases "tuareg-mode")

;; ;; ctags
(require 'semantic/ectags/db)
(semantic-load-enable-all-ectags-support)

;; ;; Extra CTAGS languages!
(semantic-ectags-add-language-support javascript-mode "javascript" "fcmpv")
(semantic-ectags-add-language-support tuareg-mode "ocaml" "cmMvptfCre")
;;(semantic-ectags-add-language-support ruby-mode "ruby" "cfmF")
(semantic-ectags-add-language-support sml-mode "sml" "efcsrtv")
(add-hook 'javascript-mode-hook 'semantic-ectags-simple-setup)
(add-hook 'tuareg-mode-hook 'semantic-ectags-simple-setup)
;; (add-hook 'ruby-mode-hook 'semantic-ectags-simple-setup)
(add-hook 'sml-mode-hook 'semantic-ectags-simple-setup)


;; Load up semantic helpers
(setq semantic-default-submodes
      '(global-semantic-idle-scheduler-mode
        global-semantic-idle-summary-mode
        global-semantic-idle-completions-mode
        global-semanticdb-minor-mode
        global-semantic-nidle-summary-mode
        global-semantic-mru-bookmark-mode
        ;; global-cedet-m3-minor-mode
        ;; global-semantic-decoration-mode
        ;; global-semantic-stickyfunc-mode
        ;; global-semantic-idle-completions-mode
        global-semantic-highlight-func-mode
        global-semantic-idle-local-symbol-highlight-mode))

;; Enable semantic
(semantic-mode +1)
(semantic-load-code-helpers-1)
(semantic-load-enable-gaudy-code-helpers-1)
(semantic-load-enable-excessive-code-helpers-1)

(use-package srefactor
  :ensure t
  :init (require 'srefactor)
  :config (progn
            (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
            (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)))

;; ECB
(use-package ecb
  :bind  (("\C-c \C-\\" . ecb-toggle)
          ("\C-c c \\"  . ecb-toggle-ecb-windows)))

;; Toggle ecb activation
(defun ecb-toggle ()
  (interactive)
  (if (and (boundp 'ecb-active)
           ecb-active)
      (ecb-deactivate)
    (ecb-activate)))

(setq ecb-activation-selects-ecb-frame-if-already-active t
      ecb-auto-activate nil
      ecb-compile-window-height 6
      ecb-compile-window-temporally-enlarge 'both
      ecb-compile-window-width 'edit-window
      ecb-eshell-auto-activate nil
      ecb-eshell-buffer-sync 'always
      ecb-layout-name "leftright-directories"
      ecb-primary-secondary-mouse-buttons 'mouse-1--mouse-2
      ecb-tip-of-the-day nil
      ecb-windows-width 0.2)


(require 'ecb)

(ecb-layout-define
    "leftright-directories" left-right nil
    (ecb-split-ver 0.5 t)
    (ecb-set-directories-buffer)
    (select-window (next-window))
    (ecb-set-sources-buffer)
    (select-window (next-window (next-window) 0))
    (ecb-split-ver 0.5 t)
    (ecb-set-methods-buffer)
    (select-window (next-window))
    (ecb-set-history-buffer)
    (select-window (previous-window (previous-window (selected-window) 0) 0)))


(add-hook 'ecb-activate-hook #'(lambda ()
                                 (popwin-mode -1)
                                 (neotree-hide)
                                 (setq ecb-active t)))

(add-hook 'ecb-deactivate-hook #'(lambda ()
                                   (popwin-mode +1)
                                   (if (neo-global--window-exists-p)
                                       (neotree-show))
                                   (setq ecb-active nil)))
;;;;;;;;;;;;
;; Webkit ;;
;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/webkit")

(use-package epc)

(require 'webkit)

;; (native-package-install "pacman -S python-pyqt5" t)
;; (native-package-install "pip3 install epc" t)
;; (native-package-install "pip3 install python3-xlib" t)



(require 'focal)

;;(require 'exwm)
;;(require 'exwm-systemtray)
;;(exwm-systemtray-enable)
;;(require 'exwm-config)
;;(exwm-config-default)
(defun exwm-config-custom ()
  "Customized configuration of EXWM."

  ;; Set the initial workspace number.
  (setq exwm-workspace-number 4)

  ;; Make class name the buffer name
  (add-hook 'exwm-update-class-hook
            (lambda ()
              (exwm-workspace-rename-buffer exwm-class-name)))

  ;; 's-r': Reset
  (exwm-input-set-key (kbd "s-r") #'exwm-reset)

  ;; 's-w': Switch workspace
  (exwm-input-set-key (kbd "s-w") #'exwm-workspace-switch)

  ;; 's-left': Switch workspace left
  (exwm-input-set-key (kbd "s-<left>") #'(lambda () (interactive)
                                           (let ((new-idx (- exwm-workspace-current-index 1)))
                                             (exwm-workspace-switch 
                                              (if (< new-idx 0)
                                                  (- (exwm-workspace--count) 1)
                                                new-idx)))))

  ;; 's-right': Switch workspace right
  (exwm-input-set-key (kbd "s-<right>") #'(lambda () (interactive)
                                            (exwm-workspace-switch (mod (+ exwm-workspace-current-index 1)
                                                                        (exwm-workspace--count)))))

  ;; 's-N': Switch to certain workspace
  (dotimes (i 10)
    (exwm-input-set-key (kbd (format "s-%d" i))
                        `(lambda ()
                           (interactive)
                           (exwm-workspace-switch-create ,i))))

  ;; 's-&': Launch application
  (exwm-input-set-key (kbd "s-&")
                      (lambda (command)
                        (interactive (list (read-shell-command "$ ")))
                        (start-process-shell-command command nil command)))

  ;; Line-editing shortcuts
  (exwm-input-set-simulation-keys
   '(([?\C-b] . left)
     ([?\C-f] . right)
     ([?\C-p] . up)
     ([?\C-n] . down)
     ([?\C-a] . home)
     ([?\C-e] . end)
     ([?\M-v] . prior)
     ([?\C-v] . next)
     ([?\C-d] . delete)
     ([?\C-k] . (S-end delete))))

  ;; Configure Ido
  (ido-mode 1)
  (add-hook 'exwm-init-hook #'exwm-config--fix/ido-buffer-window-other-frame)

  ;; Other configurations
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (fringe-mode 1)
  ;; Enable EXWM
  ;;(exwm-enable)
  )

;;(exwm-config-custom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       PROGRAMMING LANGUAGES      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;
;; General ;;
;;;;;;;;;;;;;

(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords nil
                                    '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;;;;;;;;;;;;;;
;; Markdown ;;
;;;;;;;;;;;;;;

(use-package markdown-mode)

(defun markdown-mode-defaults ()
  "The defaults for my fancy markdown setup."
  ;; pretty mode-line name
  (setq mode-name "M⬇")
  ;; Remove these
  (company-mode -1)
  (smartparens-mode -1)
  (semantic-mode -1)
  (whitespace-mode -1)
  (flycheck-mode -1)
  (linum-mode -1)
;;  (projectile-mode -1)

  ;; Minor modes
  (visual-line-mode +1)
  (pandoc-mode +1)
  (flyspell-mode +1)
  ;;(smart-quotes-mode +1)
  ;;(typo-mode +1)

  ;; Margins
  (setq left-margin-width 2)
  (setq right-margin-width 2)
  (set-window-buffer nil (current-buffer)))

(add-hook 'markdown-mode-hook 'markdown-mode-defaults)

;; Special markdown mode. Used for writing major pieces of prose.
;; ODTs are preffered for generating output for sites like
;; Fanfiction.net
(defun writer-mode ()
  (markdown-mode)
  (focal-mode)

  ;; Just use pandoc's --smart flag.
  ;; It's better on my eyes anyways.
  ;; (typo-mode +1)
  ;; (smart-quotes-mode +1)

  ;; We generate odt's by default for upload to sites like Fanfiction.net
  (cl-loop for (opt . val) in
	   '((smart . t)
	     (read . "markdown")
	     (write . "odt")
	     (output . t))
	   do (pandoc--set opt val))
  (setq buffer-face-mode-face '(:family "Cambria"
					:height 135
					:width semi-condensed))
  (buffer-face-mode))

;; Notes are similar, but generate htmls instead
;; Usually though, we just use warp-mode
(defun note-mode ()
  (require 'px)
  (markdown-mode)
  (pandoc-set-write "html")
  (pandoc-set-output t)
  (setq buffer-face-mode-face '(:family "Cambria"
					:height 135
					:width semi-condensed))
  (buffer-face-mode))

;; Custom file extensions and modes
(defvar custom-markdown-modes
  '(("\\.writer\\'" . writer-mode)
    ("\\.note\\'" . note-mode)
    ;; Obviously a github repo. And if not, well it's pretty anyways
    ("^README.md$" . gfm-mode)))

(dolist (elt custom-markdown-modes)
  (add-to-list 'auto-mode-alist elt))

(modify-coding-system-alist 'file "\\.md\\'" 'utf-8)
(modify-coding-system-alist 'file "\\.writer\\'" 'utf-8)
(modify-coding-system-alist 'file "\\.note\\'" 'utf-8)

;;;;;; WARP ;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp/warp")
(require 'warp)
(require 'warp-reload)

(global-set-key (kbd "C-c C-w C-w") 'warp-mode)
(global-set-key (kbd "C-c C-w C-r") 'warp-reload)

;; Set markdown converter(s)
(setf my-warp-converters
  ;; Written works need 'smart' quotes and proper dashes.
  '(("\\.writer$" t (lambda ()
                     `("pandoc"
                       "--smart"
                       "--read=markdown"
                       "--write=html"
		       "--mathjax"
                       ,(concat "--template="
                                (expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
                       ,(concat "--css="
                                (expand-file-name "~/.emacs.d/extra/pandoc/writer.css"))
                       )))


    ;; Notes are similar to written works, but have a TOC
    ;; and are displayed in a wider main-content div
    ("\\.note$" t (lambda ()
                    `("pandoc"
                      "--smart"
                      "--toc"
                      "--read=markdown"
                      "--write=html"
		      "--mathjax"
                      ,(concat "--template="
                               (expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
                      ,(concat "--css="
                               (expand-file-name "~/.emacs.d/extra/pandoc/note.css"))
                      )))

    ("README.md$" t (lambda ()
                   `("pandoc"
                     "--read=markdown"
                     "--write=html"
                     ,(concat "--template="
                              (expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
                     ,(concat "--css="
                              (expand-file-name "~/.emacs.d/extra/pandoc/note.css"))
                     )))

    ;; Fallback
    (markdown-mode t (lambda () '("marked")))

    ;; More go here
    ))

(setf warp-format-converter-alist my-warp-converters)
(setenv "NODE_PATH" "/usr/lib/node_modules/")

;;(install-external-package "npm install -g marked")


;;;;;;;;;;
;; LISP ;;
;;;;;;;;;;

;; generic lisp coding defaults
(defun lisp-coding-defaults ()
  (smartparens-strict-mode +1)
  (rainbow-delimiters-mode +1)
  (whitespace-mode -1))

(add-hook 'lisp-mode-hook 'lisp-coding-defaults)

(use-package srefactor
  :init (progn
	  (require 'srefactor)
	  (require 'srefactor-lisp)))

;;;;;;;;;;;;;;;;;
;; Common Lisp ;;
;;;;;;;;;;;;;;;;;

;; SLY vs SLIME
(use-package slime)

(setq inferior-lisp-program (or (executable-find "clisp")
                                (executable-find "sbcl")))

(use-package slime-company
  :config (add-hook 'slime-mode-hook 'slime-company-mode))

;;(install-external-package "pacman -S clisp" t)
;;(install-external-package "pacman -S sbcl" t)

;;;;;;;;;;;;
;; Scheme ;;
;;;;;;;;;;;;

;; (use-package geiser
;;   :ensure t
;;   :config (setq geiser-active-implementations '(guile)))

;; (use-package racket-mode
;;   :ensure t
;;   :bind ("C-c r" . racket-run)
;;   :mode ("\\.rkt$"))

;; (add-hook 'geiser-mode 'lisp-coding-defaults)

;;(install-external-package "pacman -S racket")
;;(install-external-package "pacman -S guile")

;;;;;;;;;;;;;;;;
;; Emacs Lisp ;;
;;;;;;;;;;;;;;;;

(define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)
(define-key emacs-lisp-mode-map (kbd "C-c C-b") 'eval-buffer)

(defun recompile-elc-on-save ()
  "Recompile the .elc if it exists."
  (when (and (string-prefix-p (file-truename "~/") (file-truename buffer-file-name))
             (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (emacs-lisp-byte-compile)))

(defun emacs-lisp-mode-defaults ()
  "Defaults for `emacs-lisp-mode'."
  (setq mode-name "el")
  (add-hook 'emacs-lisp-mode-hook 'lisp-coding-defaults)
  (add-hook 'emacs-lisp-mode-hook 'recompile-elc-on-save nil t)
  (eldoc-mode +1)
  (rainbow-delimiters-mode +1))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-defaults)
;;(add-hook 'emacs-lisp-mode-hook 'recompile-elc-on-save)
(add-hook 'eldoc-mode-hook #'(lambda () (diminish 'eldoc-mode)))


;;;;;;;;;;;
;; C/C++ ;;
;;;;;;;;;;;

(add-hook 'c-initialization-hook
	  #'(lambda ()
	      (define-key c-mode-base-map [(meta o)]
		'ff-get-other-file)))

;; Flycheck checkers:
;; * cpplint (native package manager)

;; Bison/Yacc
(use-package bison-mode 
  :mode "\\.y[y]?$")

;; Irony static analysis engine
(use-package irony
  :defer t
  :config (progn
            (add-hook 'c-mode-hook 'irony-mode)
            (add-hook 'c++-mode-hook 'irony-mode)
            (add-hook 'objc-mode-hook 'irony-mode)))

;; Completion backend for company
(use-package company-irony
  :ensure t
  :config (progn
	    (eval-after-load 'company
	      '(add-to-list 'company-backends 'company-irony))))

(use-package flycheck-irony
  :config (with-eval-after-load 'flycheck
	    (require 'flycheck-irony)
	    (add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
	    (flycheck-add-next-checker 'irony '(warning . c/c++-cppcheck))))


(use-package flycheck-google-cpplint
  :config (eval-after-load 'flycheck
	    '(progn
	       (require 'flycheck-google-cpplint)
	       ;; Add Google C++ Style checker.
	       ;; In default, syntax checked by Clang and Cppcheck.
	       (flycheck-add-next-checker 'c/c++-cppcheck
					  '(warning . c/c++-googlelint)))))
;; (use-package google-c-style
;;   :config (progn
;;             (add-hook 'c-mode-common-hook 'google-set-c-style)
;;             (add-hook 'c-mode-common-hook 'google-make-newline-indent)))

(use-package clang-format
  :config (progn
	    (setq clang-format-style "Google")
	    (add-hook 'before-save-hook
		      #'(lambda ()
			  (interactive)
			  (let ((file-name (buffer-file-name)))
			    (when (and file-name
				       (or (eq major-mode 'c-mode)
					   (eq major-mode 'c++-mode)
					   (eq major-mode 'cc-mode))
				       (not (s-suffix? "_spec"
						       (file-name-base file-name))))
			      (clang-format-buffer)))))))

(add-hook 'c-mode-common-hook
	  #'(lambda ()
	      (interactive)
	      (let ((file-name (buffer-file-name)))
		(when (and file-name
			   (or (eq major-mode 'c-mode)
			       (eq major-mode 'c++-mode)
			       (eq major-mode 'cc-mode))
			   (s-suffix? "_spec"
				      (file-name-base file-name)))
		  (setq c-syntactic-indentation nil)))))

;; (use-package rtags
;;   :init (require 'rtags))

;; (use-package cmake-ide
;;   :config (progn
;; 	    (setq cmake-ide-rdm-executable "/usr/bin/rdm")
;; 	    (setq cmake-ide-rc-executable "/usr/bin/rc")
;; 	    (cmake-ide-setup)))

(use-package cpputils-cmake
  :config (progn
	    (add-hook 'c-mode-common-hook
		      (lambda ()
			(if (derived-mode-p 'c-mode 'c++-mode)
			    (cppcm-reload-all)
			  )))

	    ;; ;; OPTIONAL, somebody reported that they can use this package with Fortran
	    ;; (add-hook 'c90-mode-hook (lambda () (cppcm-reload-all)))

	    ;; OPTIONAL, avoid typing full path when starting gdb
	    (global-set-key (kbd "C-c C-g")
			    #'(lambda ()
				(interactive)
				(gud-gdb (concat "gdb --fullname "
						 (cppcm-get-exe-path-current-buffer)))))
	    
	    ;; OPTIONAL, some users need specify extra flags forwarded to compiler
	    ;; (setq cppcm-extra-preprocss-flags-from-user '("-I/usr/src/linux/include" "-DNDEBUG"))
	    ))

(use-package cmake-font-lock)
(use-package company-c-headers)

(use-package doxymacs
  :ensure nil
  :init (require 'doxymacs)
  :config (progn
	    (defun my-doxymacs-font-lock-hook ()
	      (if (or (eq major-mode 'c-mode)
		      (eq major-mode 'c++-mode))
		  (doxymacs-font-lock)))
	    (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
	    (add-hook 'c-mode-common-hook 'doxymacs-mode)))


;;(install-external-package "pacman -S cpplint")

(require 'font-lock)

(defun --copy-face (new-face face)
  "Define NEW-FACE from existing FACE."
  (copy-face face new-face)
  (eval `(defvar ,new-face nil))
  (set new-face new-face))

(--copy-face 'font-lock-label-face  ; labels, case, public, private, proteced, namespace-tags
	     'font-lock-keyword-face)
(--copy-face 'font-lock-doc-markup-face ; comment markups such as Javadoc-tags
	     'font-lock-doc-face)
(--copy-face 'font-lock-doc-string-face ; comment markups
	     'font-lock-comment-face)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)


(add-hook 'c++-mode-hook
	  '(lambda()
	     ;; We could place some regexes into `c-mode-common-hook', but note that their evaluation order
	     ;; matters.
	     (font-lock-add-keywords
	      nil '(;; complete some fundamental keywords
		    ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
		    ;; namespace names and tags - these are rendered as constants by cc-mode
		    ("\\<\\(\\w+::\\)" . font-lock-function-name-face)
		    ;;  new C++11 keywords
		    ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-keyword-face)
		    ("\\<\\(char16_t\\|char32_t\\)\\>" . font-lock-keyword-face)
		    ;; PREPROCESSOR_CONSTANT, PREPROCESSORCONSTANT
		    ("\\<[A-Z]*_[A-Z_]+\\>" . font-lock-constant-face)
		    ("\\<[A-Z]\\{3,\\}\\>"  . font-lock-constant-face)
		    ;; hexadecimal numbers
		    ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
		    ;; integer/float/scientific numbers
		    ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
		    ;; c++11 string literals
		    ;;       L"wide string"
		    ;;       L"wide string with UNICODE codepoint: \u2018"
		    ;;       u8"UTF-8 string", u"UTF-16 string", U"UTF-32 string"
		    ("\\<\\([LuU8]+\\)\".*?\"" 1 font-lock-keyword-face)
		    ;;       R"(user-defined literal)"
		    ;;       R"( a "quot'd" string )"
		    ;;       R"delimiter(The String Data" )delimiter"
		    ;;       R"delimiter((a-z))delimiter" is equivalent to "(a-z)"
		    ("\\(\\<[uU8]*R\"[^\\s-\\\\()]\\{0,16\\}(\\)" 1 font-lock-keyword-face t) ; start delimiter
		    (   "\\<[uU8]*R\"[^\\s-\\\\()]\\{0,16\\}(\\(.*?\\))[^\\s-\\\\()]\\{0,16\\}\"" 1 font-lock-string-face t)  ; actual string
		    (   "\\<[uU8]*R\"[^\\s-\\\\()]\\{0,16\\}(.*?\\()[^\\s-\\\\()]\\{0,16\\}\"\\)" 1 font-lock-keyword-face t) ; end delimiter

		    ;; user-defined types (rather project-specific)
		    ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(type\\|ptr\\)\\>" . font-lock-type-face)
		    ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
		    ))
             
	     ) t)

;;;;;;;;;;
;; Java ;;
;;;;;;;;;;

(require 'eclim)
(global-eclim-mode)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)



;;;;;;;;;;
;; Ruby ;;
;;;;;;;;;;

;; Better Ruby major mode
(require 'ruby-mode)
(use-package ruby-mode
  :mode ("\\.rb$"
         "\\.rake$"
         "Rakefile"
         "Gemfile" )
  :interpreter "ruby")

;; YARDoc mode
(require 'yard-mode)

(add-hook 'ruby-mode-hook 'yard-mode)

;; RSpec minor mode
(use-package rspec-mode)

;; Inferior Ruby subprocess
(use-package inf-ruby)

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; Bundler commands
(use-package bundler)

;; Robe
(use-package robe)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(add-hook 'ruby-mode-hook 'robe-mode)

(require 'rvm)
(rvm-use-default)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; (setq flycheck-command-wrapper-function
;;       #'(lambda (command)
;;           (if (or (eq major-mode 'ruby-mode)
;;                   (eq major-mode 'enh-ruby-mode))
;;               (append '("bundle" "exec") command))))


;; Flycheck checkers
;; * rubocop
;; * rubylint

;;(install-external-package "gem install yard")
;;(install-external-package "gem install bundler")
;;(install-external-package "gem install rubocop ruby-lint")
;;(install-external-package "gem install pry pry-doc method_source")

;;;;;;;;;;;
;; OCaml ;;
;;;;;;;;;;;

;; Update the emacs load path
(let ((opam-share (substring (shell-command-to-string "opam config var share") 0 -1)))
  (add-to-list 'load-path (concat opam-share "/emacs/site-lisp")))


;; Setup environment variables using opam
(cl-loop for (name val)
         in (car (read-from-string (shell-command-to-string "opam config env --sexp")))
         do (setenv name val))


;; The OCaml major mode
(use-package tuareg
  :mode (("\\.ml\\'"  . tuareg-mode)
         ("\\.mli\\'" . tuareg-mode)
         ("\\.mll\\'" . tuareg-mode)
         ("\\.mly\\'" . tuareg-mode))
  :config  (progn
             ;; make OCaml-generated files invisible to filename completion
             (mapc #'(lambda (ext) (add-to-list 'completion-ignored-extensions ext))
                   '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi" ".cmxs" ".cmt" ".annot"))))

(add-hook 'tuareg-mode-hook #'(lambda () (interactive) (setq mode-name "ocaml")))

;; Indentation 'opam install ocp-indent'
(use-package ocp-indent
  :ensure t)
(add-hook 'tuareg-mode-hook #'(lambda () (interactive) (ocp-setup-indent)))

;; Automatically load utop.el
;;(autoload 'utop "utop" "Toplevel for OCaml" t)
;; Use the opam installed utop
;;(setq utop-command "opam config exect -- utop -emacs")
;;(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
;;(add-hook 'tuareg-mode-hook 'utop-minor-mode)

;; Merlin is used for completion
;; requires native package: 'opam install merlin'
(require 'merlin)
(add-to-list 'company-backends 'merlin-company-backend)
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode)
(setq merlin-command 'opam)

(require 'flycheck-ocaml)
(with-eval-after-load 'merlin
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)
  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))

;;(install-external-package "pacman -S ocaml" t)
;;(install-external-package "opam install ocp-indent")
;;(install-external-package "opam install merlin" nil "ocamlmerlin")
;;(install-external-package "opam install utop" nil)

;;;;;;;;;;;;
;; Python ;;
;;;;;;;;;;;;

;; The major-mode
;; (use-package python-mode
;;   :ensure t)

;; ;; Python auto-complete
;; (use-package anaconda-mode
;;   :ensure t)

;; (use-package company-anaconda
;;   :ensure t)


;;;;;;;;;;;;;;;;
;; Javascript ;;
;;;;;;;;;;;;;;;;

;; The major-mode
(use-package js2-mode)

;; Flycheck checkers:
;; * jshint \   !preferred (npm)
;; * eslint -\
;; * gjslint --- One of these
;; * jsonlint -- for JSON (npm)

;;(install-external-package "pacman -s nodejs" t "node")
;;(install-external-package "npm install -g jshint" t)
;;(install-external-package "npm install -g jsonlint" t)

;;;;;;;;;;;;;;;;;;
;; CoffeeScript ;;
;;;;;;;;;;;;;;;;;;

;; Coffescript 'npm install -g coffee'
(use-package coffee-mode)

;; Flycheck checkers:
;; * coffee (the transpiler)
;; * coffeelint (npm)

;;(install-external-package "npm install -g coffee" t)
;;(install-external-package "npm install -g coffeelint" t)

;;;;;;;;;;;;;
;; Haskell ;;
;;;;;;;;;;;;;

(setenv "PATH" (concat (getenv "PATH") ":~/.cabal/bin/"))

;; The major-mode
(use-package haskell-mode)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(speedbar-add-supported-extension ".hs")

(setq haskell-process-suggest-remove-import-lines t
      haskell-process-auto-import-loaded-modules t
      haskell-process-log t
      haskell-process-type 'cabal-repl
      haskell-tags-on-save t ;; requires hasktags
      haskell-process-suggest-hoogle-imports t
      haskell-stylish-on-save t  ;; requires stylish-haskell
      haskell-indentation-show-indentations nil)

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`")     'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c")   'haskell-process-cabal)
(define-key haskell-mode-map (kbd "SPC")     'haskell-mode-contextual-space)
(define-key haskell-mode-map (kbd "M-.")     'haskell-mode-jump-to-def-or-tag)
(define-key haskell-mode-map (kbd "C-,")     'haskell-move-nested-left)
(define-key haskell-mode-map (kbd "C-.")     'haskell-move-nested-right)
(define-key haskell-mode-map [f8]            'haskell-navigate-imports)

(require 'haskell-cabal)
(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)

;; GHC-mod tools 'cabal install ghc-mod'
(use-package ghc
  :config (progn
            (autoload 'ghc-init "ghc" nil t)
            (autoload 'ghc-debug "ghc" nil t)
            (add-hook 'haskell-mode-hook (lambda () (ghc-init)))))

;; Haskell Flycheck:
;; * ghc
;; * hlint (cabal)
;; * ghc-mod (cabal)

(require 'hs-lint)
(setq hs-lint-replace-with-suggestions t)

(use-package flycheck-haskell
  :config (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

;; (use-package flycheck-ghcmod
;;   :ensure t)

;;(install-external-package "pacman -S ghc" t)
;;(install-external-package "cabal install ghc-mod")
;;(install-native-package "cabal install hasktags")
;;(install-native-package "cabal install stylish-haskell")
;;(install-external-package "cabal install hlint")


;;;;;;;;;;;
;; Julia ;;
;;;;;;;;;;;

;; The major-mode
(use-package julia-mode)

;;(install-external-package "pacman -S julia" t)

;;;;;;;;;
;; Lua ;;
;;;;;;;;;

(use-package lua-mode
  :mode "\\.lua$"
  :interpreter "lua")

;;;;;;;;;
;; SML ;;
;;;;;;;;;

(use-package sml-mode)

(provide 'init)

;;; init.el ends here
(put 'upcase-region 'disabled nil)
