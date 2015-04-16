;;; init.el --- My init file
;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#3aB1B8")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("4cc896bc19f72a1228dbd869b1a41848e2412199bd415b67848ffb1f58b5306b" "4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" default)))
 '(desktop-save-mode t)
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
 '(fci-rule-color "#073642")
 '(ggtags-global-output-format (quote grep))
 '(ggtags-use-idutils t)
 '(helm-imenu-fuzzy-match t)
 '(helm-recentf-fuzzy-match t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#3aB1B8" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
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
 '(indent-tabs-mode t)
 '(ispell-local-dictionary "american")
 '(ispell-local-dictionary-alist
   (quote
    (("american" "[[:alpha:]]" "[^[:alpha:]]" "['’]" t
      ("-d" "en_US-w_accents")
      nil utf-8))))
 '(magit-diff-use-overlays nil)
 '(paradox-github-token t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-default-separator (quote utf-8))
 '(powerline-height 20)
 '(projectile-global-mode t)
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sp-base-key-bindings (quote paredit))
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
     (200 . "#6ca13d")
     (220 . "#5fa45c")
     (240 . "#53a97a")
     (260 . "#46ad99")
     (280 . "#3aB1B8")
     (300 . "#32a1c2")
     (320 . "#2e9ac7")
     (340 . "#2a92cc")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#3aB1B8" "#839496" "#657b83"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-variable-tag ((t (:foreground "blue1" :weight bold :height 1.0 :family "Liberation Mono"))))
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
(if (fboundp 'global-linum-mode) (global-linum-mode))

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

(require 'package-prioritize)

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
(require 'diminish)
(require 'bind-key)

;; Package-utils helpers
(use-package package-utils
  :ensure t)

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

;; Solarized
(add-to-list 'load-path "~/.emacs.d/themes/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized/")
(setq solarized-distinct-fringe-background t) ;; make the fringe stand out from the background
(setq solarized-use-less-bold t) ;; use less bolding
(load-theme 'solarized-dark t t)
(load-theme 'solarized-light t t)

;; Ample
(use-package ample-theme
  :ensure t
  :config (progn
            (load-theme 'ample t t)
            (load-theme 'ample-flat t t)
            (load-theme 'ample-light t t)))

;; Monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai/")
(load-theme 'monokai-extended t t)

;; cycle-themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/cycle-themes")
(require 'cycle-themes)
(setq cycle-themes-theme-list
      '(leuven monokai-extended solarized-dark))
;; (define-key cycle-themes-mode-map (kbd "C-c C-c C-t") 'cycle-themes)



(defun flatten-mode-line ()
  (set-face-attribute 'mode-line nil
                      :box (face-background 'mode-line)
                      :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
                                   (face-background 'mode-line)))

  (set-face-attribute 'mode-line-inactive nil
                      :box (face-background 'mode-line)
                      :underline (unless (eq (face-attribute 'mode-line :underline) 'unspecified)
                                   (face-background 'mode-line))))

(defun normalize-fringes ()
  "Make the fringes the same color as the background."
  (unless (and (boundp 'ecb-active)
               ecb-active)
    (set-face-attribute 'fringe nil :background (face-background 'default))
    (set-face-attribute 'linum nil :background (face-background 'default))))

(add-hook 'cycle-themes-after-cycle-hook #'flatten-mode-line)
(add-hook 'cycle-themes-after-cycle-hook #'normalize-fringes)

(cycle-themes-mode)


;; Custom Powerline
(add-to-list 'load-path "~/.emacs.d/themes/powerline")
(require 'powerline)
;;(powerline-vimish-theme)


;; A fancy tab-bar
(use-package tabbar-ruler
  :ensure t
  :init (progn
          (setq tabbar-use-images nil)
          (setq tabbar-ruler-global-tabbar t)
          (setq tabbar-ruler-movement-timer-delay 1000000))
  :config (setq tabbar-buffer-groups-function 'tabbar-buffer-groups))


(global-key-binding (kbd "<mouse-9>") #'((lambda () (interactive) (tabbar-forward))))
(global-key-binding (kbd "<mouse-8>") #'((lambda () (interactive) (tabbar-backward))))

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



;;;;;;;;;;;;;
;; Generic ;;
;;;;;;;;;;;;;

;; Helm
;; (use-package helm
;;   :ensure t)
;; (use-package helm-ls-git
;;   :ensure t)
;; (require 'my-helm-config)

(use-package ido-ubiquitous
  :config (ido-ubiquitous-mode +1))

(ido-mode +1)

(use-package key-chord
  :ensure t
  :config (key-chord-mode +1))

;; Extensible Vi Layer
(use-package evil
  :ensure
  :config (key-chord-define evil-insert-state-map  "ht" 'evil-normal-state))

;; God mode
(use-package god-mode
  :ensure t
  :bind ("C-." . god-local-mode))

;; Ensure god-mode and evil work well together
(use-package evil-god-state
  :ensure t
  :config (progn
            (evil-define-key 'normal global-map "," 'evil-execute-in-god-state)
            (evil-define-key 'god global-map [escape] 'evil-god-state-bail)))

;; Projectile
(use-package projectile
  :ensure t)

;; Etags for emacs
(use-package ggtags
  :ensure t)

;; Popup help buffers
(use-package popwin
  :ensure t
  :config (progn
            (push 'semantic-symref-results-mode popwin:special-display-config)
            (popwin-mode +1)))

;; Flycheck linter
(use-package flycheck
  :ensure t
  :config (add-hook 'after-init-hook #'global-flycheck-mode))

;; Popup
(use-package popup
  :ensure t)

;; Pretty parentheses
(use-package rainbow-delimiters
  :ensure t)

;; Smart parentheses
(use-package smartparens
  :ensure t
  :bind ("C-c C-s s" . smartparens-strict-mode)
  :config (progn
            (require 'smartparens-config)
            (smartparens-global-mode 1)))

(add-hook 'smartparens-mode-hook #'(lambda () (interactive)
                                     (let ((lighter (if smartparens-strict-mode "sp/s" "sp")))
                                       (diminish 'smartparens-mode lighter))))

;; Company auto-completion
(use-package company
  :ensure t
  :diminish company-mode
  :config (progn
            (add-hook 'after-init-hook 'global-company-mode)
            (setq company-idle-delay 0)
            ;; Saner selection key
            (define-key company-active-map (kbd "C-n") 'company-select-next)
            (define-key company-active-map (kbd "C-p") 'company-select-previous)
            (define-key company-active-map (kbd "C-h") 'company-show-doc-buffer)
            (define-key company-active-map (kbd "C-SPC") 'company-complete)
            (define-key company-active-map (kbd "M-.") 'company-show-location)))

;; Code snippets
(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config (yas-global-mode))

;; Undo-tree
(use-package undo-tree
  :ensure t
  :diminish "ut")

;; File browser
(use-package neotree
  :ensure t
  :init (setq neo-theme 'nerd)
  :config (progn
            (setq neo-persist-show nil)))

(use-package aurel
  :ensure t)

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
(use-package iedit
  :ensure t)

;; Flyspell spellchecker
(use-package flyspell
  :ensure t
  :diminish "FlyS"
  :bind ("C-," . flyspell-correct-word-before-point))

;; smart quotes and en/em-dashes
(use-package typo
  :ensure t
  :diminish "”“")

;; A simpler smart quotes mode
(autoload 'smart-quotes-mode "smart-quotes")

;; Pandoc conversion
(use-package pandoc-mode
  :ensure t)

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
  :ensure t
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
(semantic-ectags-add-language-support enh-ruby-mode "ruby" "cfmF")
(semantic-ectags-add-language-support sml-mode "sml" "efcsrtv")
(add-hook 'javascript-mode-hook 'semantic-ectags-simple-setup)
(add-hook 'tuareg-mode-hook 'semantic-ectags-simple-setup)
(add-hook 'enh-ruby-mode-hook'semantic-ectags-simple-setup)
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

;; ECB
(use-package ecb
  :ensure t
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

(use-package epc
  :ensure t)

(require 'webkit)

;; (native-package-install "pacman -S python-pyqt5" t)
;; (native-package-install "pip3 install epc" t)
;; (native-package-install "pip3 install python3-xlib" t)


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

(use-package markdown-mode
  :ensure t)

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


;; Custom file extensions and modes
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
       (buffer-face-mode)))


    ;; Notes are similar, but generate htmls instead
    ;; Usually though, we just use warp-mode
    ("\\.note\\'" . (lambda ()
                      (markdown-mode)
                      (pandoc-set-write "html")
                      (setq buffer-face-mode-face '(:family "Cambria"
                                                            :height 135
                                                            :width semi-condensed))
                      (buffer-face-mode)))

    ;; Obviously a github repo. And if not, well it's pretty anyways
    ("^README.md$" . (lambda ()
                       (gfm-mode)
                       (setq buffer-face-mode-face '(:family "Cambria"
                                                             :height 135
                                                             :width semi-condensed))
                       (buffer-face-mode)))))

(dolist (elt custom-markdown-modes)
  (add-to-list 'auto-mode-alist elt))

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
                      ,(concat "--template="
                               (expand-file-name "~/.emacs.d/extra/pandoc/default.html"))
                      ,(concat "--css="
                               (expand-file-name "~/.emacs.d/extra/pandoc/note.css"))
                      )))

    ("\\README.md$" t (lambda ()
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

;;;;;;;;;;;;;;;;;
;; Common Lisp ;;
;;;;;;;;;;;;;;;;;

;; SLY vs SLIME
(use-package sly
  :ensure t)

(setq inferior-lisp-program (or (executable-find "clisp")
                                (executable-find "sbcl")))

(use-package sly-company
  :ensure t
  :config (add-hook 'sly-mode-hook 'sly-company-mode))

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

;; Flycheck checkers:
;; * cpplint (native package manager)

;; Bison/Yacc
(use-package bison-mode
  :ensure t
  :mode "\\.y[y]?$")

;; Irony static analysis engine
(use-package irony
  :ensure t
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
               '(add-to-list 'company-backends 'company-irony))

             ;; (optional) adds CC special commands to `company-begin-commands' in order to
             ;; trigger completion at interesting places, such as after scope operator
             ;;     std::|
             (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)))

(use-package google-c-style
  :ensure t
  :config (progn
            (add-hook 'c-mode-common-hook 'google-set-c-style)
            (add-hook 'c-mode-common-hook 'google-make-newline-indent)))


;;(install-external-package "pacman -S cpplint")

;;;;;;;;;;
;; Ruby ;;
;;;;;;;;;;

;; Better Ruby major mode
(use-package enh-ruby-mode
  :ensure t
  :mode ("\\.rb$"
         "\\.rake$"
         "Rakefile"
         "Gemfile" )
  :interpreter "ruby")

;; YARDoc mode
(use-package yard-mode
  :ensure t)

(add-hook 'enh-ruby-mode-hook 'yard-mode)

;; RSpec minor mode
(use-package rspec-mode
  :ensure t)

;; Inferior Ruby subprocess
(use-package inf-ruby
  :ensure t)

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; Bundler commands
(use-package bundler
  :ensure t)

;; Robe
(use-package robe
  :ensure t)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(add-hook 'enh-ruby-mode-hook 'robe-mode)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Flycheck checkers
;; * rubocop
;; * rubylint

;;(install-external-package "gem install yard")
;;(install-external-package "gem install bundler")
;;(install-external-package "gem install rubocop")
;;(install-external-package "gem install ruby-lint")

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
  :ensure t
  :mode (("\\.ml\\'"  . tuareg-mode)
         ("\\.mli\\'" . tuareg-mode)
         ("\\.mll\\'" . tuareg-mode)
         ("\\.mly\\'" . tuareg-mode))
  :config  (progn
             ;; make OCaml-generated files invisible to filename completion
             (mapc #'(lambda (ext) (add-to-list 'completion-ignored-extensions ext))
                   '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi" ".cmxs" ".cmt" ".annot"))))

(add-hook 'tuareg-mod #'(lambda () (interactive) (setq mode-name "ocaml")))

;; Indentation 'opam install ocp-indent'
(use-package ocp-indent
  :ensure t)
(add-hook 'tuareg-mode-hook #'(lambda () (interactive) (ocp-setup-indent)))

;; Automatically load utop.el
(autoload 'utop "utop" "Toplevel for OCaml" t)
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)
;;(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
;;(add-hook 'tuareg-mode-hook 'utop-minor-mode)

;; Merlin is used for completion
;; requires native package: 'opam install merlin'
(require 'merlin)
(add-to-list 'company-backends 'merlin-company-backend)
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode)
(setq merlin-command 'opam)

;; (require 'flycheck-ocaml)
;; (with-eval-after-load 'merlin
;;   ;; Disable Merlin's own error checking
;;   (setq merlin-error-after-save nil)

;;   ;; Enable Flycheck checker
;;   (flycheck-ocaml-setup))

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
(use-package js2-mode
  :ensure t)

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
(use-package coffee-mode
  :ensure t)

;; Flycheck checkers:
;; * coffee (the transpiler)
;; * coffeelint (npm)

;;(install-external-package "npm install -g coffee" t)
;;(install-external-package "npm install -g coffeelint" t)

;;;;;;;;;;;;;
;; Haskell ;;
;;;;;;;;;;;;;

;; The major-mode
(use-package haskell-mode
  :ensure t)

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
  :ensure t
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
  :ensure t
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
(use-package julia-mode
  :ensure t)

;;(install-external-package "pacman -S julia" t)

;;;;;;;;;
;; Lua ;;
;;;;;;;;;

(use-package lua-mode
  :ensure t
  :mode "\\.lua$"
  :interpreter "lua")

;;;;;;;;;;
;; Cask ;;
;;;;;;;;;;

(use-package cask
  :ensure t)

(provide 'init)

;;; init.el ends here
(put 'upcase-region 'disabled nil)
