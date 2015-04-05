(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" default)))
 '(desktop-save-mode t)
 '(ecb-options-version "2.40")
 '(ecb-source-path
   (quote
    (("/home/kate/" "home")
     ("/home/kate/git" "git")
     ("/home/kate/code" "code")
     ("/home/kate/github" "github")
     ("/home/kate/Google Drive/Writer" "Writer"))))
 '(fci-rule-color "#073642")
 '(helm-imenu-fuzzy-match t)
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
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (bind-key helm use-package package-utils yasnippet typopunct typo tuareg tabbar synosaurus sublimity solarized-theme smartparens smart-mode-line rw-language-and-country-codes rw-ispell rw-hunspell request req-package rainbow-mode rainbow-delimiters popwin popup paredit paradox pandoc-mode ocp-indent neotree merlin markdown-mode+ load-dir leuven-theme langtool js2-mode js-comint iedit ido-ubiquitous helm-ls-git helm-descbinds flymake-jslint flymake-coffee flycheck evil esxml csv-mode company coffee-mode cl-generic)))
 '(paradox-github-token t)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-default-separator (quote utf-8))
 '(powerline-height 20)
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sp-base-key-bindings (quote paredit))
 '(tab-stop-list
   (quote
    (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
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
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Open Sans")))))


;;;;; REQUIRES ;;;;;
(require 'cl-lib)
(require 'package)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       CONFIG OPTIONS       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar-local install-extra-tools t
  "Should we try and install extra tools for Emacs?")


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


(defun djcb-popup (title msg &optional icon sound)
  "Show a popup if we're on X, or echo it otherwise; TITLE is the title
of the message, MSG is the context. Optionally, you can provide an ICON and
a sound to be played"

  (interactive)
  (when sound (shell-command
                (concat "mplayer -really-quiet " sound " 2> /dev/null")))
  (if (eq window-system 'x)
    (shell-command (concat "notify-send "
                     (if icon (concat "-i " icon) "")
                     " '" title "' '" msg "'"))
    ;; text only version
    (message (concat title ": " msg))))


(defun flatten(x)
  "Recursively flatten nested lists."
  (cond ((null x) nil)
        ((listp x) (append (flatten (car x)) (flatten (cdr x))))
        (t (list x))))


(defun get-sudo-password ()
  "Get a sudo password that will last for 5 minutes (long enough to install everything)."
  (setq password-cache-expiry 300)
  (password-read-and-add "Password for sudo: " "sudo"))


(defmacro optionally (thing)
  "I use this pattern a lot."
  `(when ,thing ,thing))


(defmacro concat-with (separator strings)
  "Concatenate a string delimited by SEPARATOR."
`(mapconcat #'identity ,strings ,separator))

;; (defmacro install-external-package (command &optional root-req executable)
;;   "Install an external package using COMMAND"
;;   (let* ((expanded (split-string command))
;;          (package-manager (car expanded))
;;          (package (car (last expanded)))
;;          (proc-name (concat-with "-" expanded)))
;;     (when (and install-extra-tools (exec-installed-p package-manager))
;;       (unless (exec-installed-p (or executable package))
;;           (let ((sudo-prefix (when root-req
;;                                (list "echo" (shell-quote-argument (get-sudo-password)) "| sudo -S"))))
;;                 (start-process-shell-command
;;                  proc-name (concat "*" proc-name "*")
;;                  (concat-with " " (flatten (list (optionally sudo-prefix)
;;                                                  package-manager
;;                                                  (cdr expanded))))))))))

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
    ;; C-x 8 . enters a floating center dot.
    ;; However; pandoc with --smart creates ellipses out of ...
    ;; ("."    . [?…])
    ))

(defun inject-custom-transl-char-map ()
  (cl-loop for (key . def) in custom-transl-char-map do
           (define-key 'iso-transl-ctl-x-8-map key def)))

(inject-custom-transl-char-map)

;; Horizontal scrolling
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

;; No scroll-bar
(scroll-bar-mode nil)

;; Line-numbering
(linum-mode)



;;;;;;;;;;;;;;
;; Packages ;;
;;;;;;;;;;;;;;

(package-initialize) ;; You might already have this line
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-refresh-contents)


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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       AESTHETICS        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Leuven
(use-package leuven-theme
  :ensure t
  :config (load-theme 'leuven t t))

;; Solarized
(use-package solarized-theme
  :ensure t
  :config (progn (load-theme 'solarized-dark t t)
                 (load-theme 'solarized-light t t)))

;; Ample
(use-package ample-theme
  :ensure t
  :config (progn
            (load-theme 'ample t t)
            (load-theme 'ample-flat t t)
            (load-theme 'ample-light t t)))

;; Monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai/")
(load-theme 'monokai t t)

;; cycle-themes
(require 'cycle-themes)
(setq cycle-themes-theme-list
      '(leuven monokai ample solarized-dark))

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
  (unless (and (boundp 'ecb-active)
               ecb-active)
    (set-face-attribute 'fringe nil :background (face-background 'default))))


(add-hook 'cycle-themes-after-cycle-hook #'flatten-mode-line)
(add-hook 'cycle-themes-after-cycle-hook #'normalize-fringes)

(cycle-themes-mode)


;; Custom Powerline
(add-to-list 'load-path "~/.emacs.d/themes/powerline")
(require 'powerline)
(powerline-vimish-theme)


;; A fancy tab-bar
(use-package tabbar-ruler
  :ensure t
  :init (progn
          (setq tabbar-use-images nil)
          (setq tabbar-ruler-global-tabbar t)
          (setq tabbar-ruler-movement-timer-delay 1000000))
  :config (setq tabbar-buffer-groups-function 'tabbar-buffer-groups))


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
            (setq indent-line-function #'indent-according-to-mode)
            (smartparens-global-mode 1)))

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
            (define-key company-active-map (kbd "C-d") 'company-show-doc-buffer)
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


(use-package direx
  :ensure t)

;; Whitespace-mode
(use-package whitespace
  :ensure t
  :config (progn
            ;; automatically clean up bad whitespace
            (setq whitespace-action '(auto-cleanup))
            ;; only show bad whitespace
            (setq whitespace-style '(trailing
                                     space-before-tab
                                     indentation empty
                                     space-after-tab))

            (global-whitespace-mode)))

;; Multiple-word edit bound to C-;
(use-package iedit
  :ensure t)

;; Flyspell spellchecker
(use-package flyspell
  :ensure t
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

;; Langtool
(use-package langtool
  :ensure t
  :bind (("C-x 4 w" . langtool-check)
         ("C-x 4 W" . langtool-check-done)
         ("C-x 4 l" . langtool-switch-default-language)
         ("C-x 4 4" . langtool-show-message-at-point)
         ("C-x 4 c" . langtool-correct-buffer))
  :config (progn
            (setq langtool-java-bin "/usr/bin/java")
            (setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*")
            (setq langtool-mother-tongue "en")
            (langtool-default-language "en")
            (setq langtool-disabled-rules '("EN_QUOTES"))))

;; Auto-magic indenting pasted code
;; (dolist (command '(yank yank-pop))
;;   (eval `(defadvice ,command (after indent-region activate)
;;            (and (not current-prefix-arg)
;;                 (member major-mode '(emacs-lisp-mode lisp-mode
;;                                      clojure-mode    scheme-mode
;;                                      haskell-mode    ruby-mode
;;                                      rspec-mode      python-mode
;;                                      c-mode          c++mode
;;                                      objc-mode       latex-mode
;;                                      plain-tex-mode  tuareg-mode
;;                                      julia-mode      js2-mode
;;                                      coffee-mode))
;;                 (let ((mark-even-if-inactive transient-mark-mode))
;;                   (indent-region (region-beginning) (region-end) nil))))))

;; Swap buffer positions
(use-package buffer-move
  :ensure t
  :bind (("<C-S-up>" . buf-move-up)
         ("<C-S-down>" . buf-move-down)
         ("<C-S-left>" . buf-move-left)
         ("<C-S-right>" . buf-move-right)))


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
          ("\C-c \\"    . ecb-toggle-ecb-windows)))

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       PROGRAMMING LANGUAGES      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;
;; Markdown ;;
;;;;;;;;;;;;;;

(use-package markdown-mode
  :ensure t)

(defun markdown-mode-defaults ()
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


;; load our defaults
(add-hook 'markdown-mode-hook 'markdown-mode-defaults)


(defun setup-serif-buffer-face
    "Enable a pretty serif face locally"
    (setq buffer-face-mode-face '(:family "Cambria"
                                  :height 135
                                  :width semi-condensed))
  (buffer-face-mode))

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
       (setup-serif-buffer-face)))


    ;; Notes are similar, but generate htmls instead
    ;; Usually though, we just use warp-mode
    ("\\.note\\'" . (lambda ()
                      (markdown-mode)
                      (pandoc-set-write "html")
                      (setup-serif-buffer-face)))

    ;; Obviously a github repo. And if not, well it's pretty anyways
    ("^README.md$" . (lambda ()
                       (gfm-mode)
                       (setup-serif-buffer-face)))))

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
(unless (getenv "NODE_PATH")
  (setenv "NODE_PATH" "/usr/lib/node_modules/"))

;;;;(install-external-package "npm install -g marked")


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

;;;;(install-external-package "pacman -S clisp" t)
;;;;(install-external-package "pacman -S sbcl" t)

;;;;;;;;;;;;
;; Scheme ;;
;;;;;;;;;;;;

(use-package geiser
  :ensure t
  :mode ("\\.scm$"
         "\\.ss$"))

;; (use-package racket-mode
;;   :ensure t
;;   :bind ("C-c r" . racket-run)
;;   :mode ("\\.rkt$"))

(add-hook 'geiser-mode 'lisp-coding-defaults)

;;;;(install-external-package "pacman -S racket")
;;;;(install-external-package "pacman -S guile")

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
  (setq mode-name "el")
  (add-hook 'emacs-lisp-mode-hook 'lisp-coding-defaults)
  (add-hook 'emacs-lisp-mode-hook 'recompile-elc-on-save nil t)
  (eldoc-mode +1)
  (rainbow-delimiters-mode +1))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-defaults)
(add-hook 'eldoc-mode-hook #'(lambda () (diminish 'eldoc-mode)))

;; Disable flycheck in init.el
(add-to-list 'auto-mode-alist '("^init.el$" . (lambda () (flycheck-mode -1))))


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

(use-package rvm
  :ensure t
  :config (rvm-use-default))

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


;; The OCaml major mode
(use-package tuareg
  :ensure t
  :mode ("\\.\\(?:ml[ily]?\\)\\'" . tuareg-mode)
  :config  (progn
             ;; make OCaml-generated files invisible to filename completion
             (mapc #'(lambda (ext) (add-to-list 'completion-ignored-extensions ext))
                   '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi" ".cmxs" ".cmt" ".annot"))))


;; Indentation 'opam install ocp-indent'
(use-package ocp-indent
  :ensure t)

;; Merlin is used for completion
;; requires native package: 'opam install ocp-indent'
(use-package merlin
  :ensure t
  :mode ("\\.\\(?:ml[i]?\\)\\'" . merlin-mode)
  :config (progn
            (setq merlin-command (file-truename "~/.opam/system/bin/ocamlmerlin"))
            (add-to-list 'company-backends 'merlin-company-backend)
            ;; (add-hook 'merlin-mode-hook 'company-mode)
            (add-hook 'tuareg-mode-hook 'merlin-mode)))  ; needed only if ocamlmerlin not already in your PATH



(with-eval-after-load 'merlin
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)

  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))

(add-hook 'tuareg-mode-hook #'merlin-mode)

;;(install-external-package "pacman -S ocaml" t)
;;(install-external-package "opam install ocp-indent")
;;(install-external-package "opam install ocp-indent")

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

;; GHC-mod tools 'cabal install ghc-mod'
(use-package ghc
  :ensure t)

;; Haskell Flycheck:
;; * ghc
;; * hlint (cabal)
;; * hdevtools (cabal)
;; * ghc-mod (cabal)

(use-package flycheck-hdevtools
  :ensure t)

(use-package flycheck-ghcmod
  :ensure t)

;;(install-external-package "pacman -S ghc" t)
;;(install-external-package "cabal install ghc-mod")
;;(install-external-package "cabal install hlint")
;;(install-external-package "cabal install hdevtools")


;;;;;;;;;;;
;; Julia ;;
;;;;;;;;;;;

;; The major-mode
(use-package julia-mode
  :ensure t)

;;(install-external-package "pacman -S julia" t)
