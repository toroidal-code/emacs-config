;;;;;;;;;;
;; HELM ;;
;;;;;;;;;;
(use-package helm
  :ensure t)

(use-package helm-descbinds
  :ensure t)

(use-package helm-ls-git
  :ensure t)

;; from thierry's config
(require 'helm-config)

;;; Enable Modes (This is loading nearly everything).
;;
(helm-mode 1)
(helm-adaptive-mode 1)
(helm-autoresize-mode 1)

;;; Helm-command-map
;;
;;
(define-key helm-command-map (kbd "g")   'helm-apt)
(define-key helm-command-map (kbd "w")   'helm-psession)
(define-key helm-command-map (kbd "z")   'helm-complex-command-history)
(define-key helm-command-map (kbd "w")   'helm-w3m-bookmarks)
(define-key helm-command-map (kbd "x")   'helm-firefox-bookmarks)
(define-key helm-command-map (kbd "#")   'helm-emms)

;;; Global-map
;;
;;
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "M-y")                          'helm-show-kill-ring)
(global-set-key (kbd "C-c f")                        'helm-recentf)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)
(global-set-key (kbd "C-c <SPC>")                    'helm-all-mark-rings)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-h r")                        'helm-info-emacs)
(global-set-key (kbd "C-:")                          'helm-eval-expression-with-eldoc)
(global-set-key (kbd "C-,")                          'helm-calcul-expression)
(global-set-key (kbd "C-h d")                        'helm-info-at-point)
(global-set-key (kbd "C-c g")                        'helm-google-suggest)
(global-set-key (kbd "C-x C-d")                      'helm-browse-project)
(global-set-key (kbd "<f1>")                         'helm-resume)
(global-set-key (kbd "C-h C-f")                      'helm-apropos)
(global-set-key (kbd "<f5> s")                       'helm-find)
(global-set-key (kbd "<f2>")                         'helm-execute-kmacro)
(define-key global-map [remap jump-to-register]      'helm-register)
(define-key global-map [remap list-buffers]          'helm-buffers-list)
(define-key global-map [remap dabbrev-expand]        'helm-dabbrev)
(define-key global-map [remap find-tag]              'helm-etags-select)
(define-key global-map [remap xref-find-definitions] 'helm-etags-select)
(define-key shell-mode-map (kbd "M-p")               'helm-comint-input-ring) ; shell history.


(define-key helm-map (kbd "M-RET") 'helm-execute-persistent-action)
(define-key helm-map (kbd "<M-return>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "M-S-RET") "C-u M-RET")
(define-key helm-map (kbd "<M-S-return>") "C-u M-RET")


(define-key helm-read-file-map [remap eshell] 'helm-ff-run-switch-to-eshell)
(define-key helm-read-file-map [remap eshell-here] 'helm-ff-run-switch-to-eshell)
(define-key helm-read-file-map (kbd "RET") 'helm-ff-persistent-expand-dir)
(define-key helm-read-file-map (kbd "<return>") 'helm-ff-persistent-expand-dir)
(define-key helm-read-file-map (kbd "M-RET") 'helm-ff-execute-dired-dir)
(define-key helm-read-file-map (kbd "<M-return>") 'helm-ff-execute-dired-dir)
(define-key helm-read-file-map (kbd "RET") 'helm-ff-persistent-expand-dir)
(define-key helm-read-file-map (kbd "<return>") 'helm-ff-persistent-expand-dir)
(define-key helm-read-file-map (kbd "M-RET") 'helm-ff-execute-dired-dir)
(define-key helm-read-file-map (kbd "<M-return>") 'helm-ff-execute-dired-dir)
(define-key helm-read-file-map (kbd "DEL") 'helm-ff-backspace)

(define-key helm-find-files-map [remap eshell] 'helm-ff-run-switch-to-eshell)
(define-key helm-find-files-map [remap eshell-here] 'helm-ff-run-switch-to-eshell)
(define-key helm-find-files-map (kbd "DEL") 'helm-ff-backspace)
(define-key helm-find-files-map (kbd "RET") 'helm-ff-persistent-expand-dir)
(define-key helm-find-files-map (kbd "<return>") 'helm-ff-persistent-expand-dir)
(define-key helm-find-files-map (kbd "M-RET") 'helm-ff-execute-dired-dir)
(define-key helm-find-files-map (kbd "<M-return>") 'helm-ff-execute-dired-dir)
(define-key helm-find-files-map (kbd "RET") 'helm-ff-persistent-expand-dir)
(define-key helm-find-files-map (kbd "<return>") 'helm-ff-persistent-expand-dir)
(define-key helm-find-files-map (kbd "M-RET") 'helm-ff-execute-dired-dir)
(define-key helm-find-files-map (kbd "<M-return>") 'helm-ff-execute-dired-dir)


;;; helm find files
;;
(define-key helm-find-files-map (kbd "C-d") 'helm-ff-persistent-delete)
(define-key helm-buffer-map (kbd "C-d")     'helm-buffer-run-kill-persistent)



;;; Describe key-bindings
;;
;;
(helm-descbinds-install)            ; C-h b, C-x C-h

;;; Helm-variables
;;
;;
(setq helm-google-suggest-use-curl-p             t
      ;helm-kill-ring-threshold                   1
      ;helm-raise-command                         "wmctrl -xa %s"
      helm-scroll-amount                         4
      ;helm-quick-update                          t
      helm-idle-delay                            0.01
      helm-input-idle-delay                      0.01
      ;helm-completion-window-scroll-margin       0
      ;helm-display-source-at-screen-top          nil
      helm-ff-search-library-in-sexp             t
      ;helm-kill-ring-max-lines-number            5
      helm-default-external-file-browser         "nautilus"
      helm-pdfgrep-default-read-command          "evince --page-label=%p '%f'"
      ;helm-ff-transformer-show-only-basename     t
      helm-ff-auto-update-initial-value          t
      helm-grep-default-command                  "ack-grep -Hn --smart-case --no-group %e %p %f"
      helm-grep-default-recurse-command          "ack-grep -H --smart-case --no-group %e %p %f"
      ;; Allow skipping unwanted files specified in ~/.gitignore_global
      ;; Added in my .gitconfig with "git config --global core.excludesfile ~/.gitignore_global"
      helm-ls-git-grep-command                   "git grep -n%cH --color=always --exclude-standard --no-index --full-name -e %p %f"
      helm-default-zgrep-command                 "zgrep --color=always -a -n%cH -e %p %f"
      ;helm-pdfgrep-default-command               "pdfgrep --color always -niH %s %s"
      helm-reuse-last-window-split-state         t
      ;helm-split-window-default-side             'other
      ;helm-split-window-in-side-p                nil
      helm-always-two-windows                    t
      ;helm-persistent-action-use-special-display t
      helm-buffers-favorite-modes                (append helm-buffers-favorite-modes
                                                         '(picture-mode artist-mode))
      helm-ls-git-status-command                 'magit-status
      ;helm-never-delay-on-input                  nil
      ;helm-candidate-number-limit                200
      helm-M-x-requires-pattern                  0
      helm-dabbrev-cycle-threshold                3
      helm-surfraw-duckduckgo-url                "https://duckduckgo.com/?q=%s&ke=-1&kf=fw&kl=fr-fr&kr=b&k1=-1&k4=-1"
      ;helm-surfraw-default-browser-function      'w3m-browse-url
      helm-boring-file-regexp-list               '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "\\.i$")
      ;helm-mode-handle-completion-in-region      t
      ;helm-moccur-always-search-in-current        t
      ;helm-tramp-verbose                         6
      ;helm-ff-file-name-history-use-recentf      t
      ;helm-follow-mode-persistent                t
      helm-apropos-fuzzy-match                    t
      helm-M-x-fuzzy-match                        t
      helm-lisp-fuzzy-completion                  t
      ;helm-locate-fuzzy-match                     t
      helm-completion-in-region-fuzzy-match       t
      helm-move-to-line-cycle-in-source           t
      ido-use-virtual-buffers                     t             ; Needed in helm-buffers-list
      helm-tramp-verbose                          6
      helm-buffers-fuzzy-matching                 t
      helm-locate-command                         "locate %s -e -A --regex %s"
      helm-org-headings-fontify                   t
      helm-autoresize-max-height                  80 ; it is %.
      helm-autoresize-min-height                  20 ; it is %.
      fit-window-to-buffer-horizontally           1
      helm-search-suggest-action-wikipedia-url
      "https://en.wikipedia.org/wiki/Special:Search?search=%s"
      helm-wikipedia-suggest-url
      "http://en.wikipedia.org/w/api.php?action=opensearch&search="
      helm-wikipedia-summary-url
      "http://en.wikipedia.org/w/api.php?action=parse&format=json&prop=text&section=0&page=")



;; Avoid hitting forbidden directory .gvfs when using find.
(add-to-list 'completion-ignored-extensions ".gvfs/")


;;; Toggle grep program
;;
;;
(defun eselect-grep ()
  (interactive)
  (when (y-or-n-p (format "Current grep program is %s, switching? "
                          (helm-grep-command)))
    (if (helm-grep-use-ack-p)
        (setq helm-grep-default-command
              "grep --color=always -d skip %e -n%cH -e %p %f"
              helm-grep-default-recurse-command
              "grep --color=always -d recurse %e -n%cH -e %p %f")
        (setq helm-grep-default-command
              "ack-grep -Hn --smart-case --no-group %e %p %f"
              helm-grep-default-recurse-command
              "ack-grep -H --smart-case --no-group %e %p %f"))
    (message "Switched to %s" (helm-grep-command))))



;;; helm-mode functions

;;; This comes from https://github.com/emacs-helm/helm/pull/327, but
;;; was reverted so it is added back here.
(defcustom helm-ff-ido-style-backspace t
  "Use backspace to navigate with `helm-find-files'.
You will have to restart Emacs or reeval `helm-find-files-map'
and `helm-read-file-map' for this to take effect."
  :type '(choice
          (const :tag "Do not use ido-style backspace")
          (const :tag "Use ido-style backspace" t)))

(defun helm-ff-backspace ()
  "Call backsapce or `helm-find-files-down-one-level'.
If sitting at the end of a file directory, backspace goes up one
level, like in `ido-find-file'. "
  (interactive)
  (looking-back "^.*")
  (cond
   ((and helm-ff-ido-style-backspace (looking-back "[/\\]"))
    (helm-find-files-up-one-level 1))
   (t
    (call-interactively
     (lookup-key (current-global-map) (read-kbd-macro "DEL"))))))

;;; This comes from https://github.com/emacs-helm/helm/issues/340
(defcustom helm-ido-style-return t
  "Allows ido-style return in `helm-mode'"
  :type 'boolean)

(defvar helm-buffer)
(defvar helm-ff-default-directory)
(defvar helm-ff-last-expanded)
;; (declare-function helm-basename "helm-utils.el")
;; (declare-function helm-exit-minibuffer "helm.el")
;; (declare-function helm-attrset "helm.el")
;; (declare-function helm-execute-persistent-action "helm.el")
(defun helm-ff-expand-dir (candidate)
  "Allows return to expand a directory like in `ido-find-file'.
This requires `helm-ido-style-return' to be non-nil."
  (let* ((follow (buffer-local-value
                  'helm-follow-mode
                  (get-buffer-create helm-buffer)))
         (insert-in-minibuffer
          #'(lambda (fname)
              (with-selected-window (minibuffer-window)
                (unless follow
                  (delete-minibuffer-contents)
                  (set-text-properties 0 (length fname)
                                       nil fname)
                  (insert fname))))))
    (if (and helm-ido-style-return
	     (file-directory-p candidate))
        (progn
          (when (string= (helm-basename candidate) "..")
            (setq helm-ff-last-expanded helm-ff-default-directory))
          (funcall insert-in-minibuffer (file-name-as-directory
                                         (expand-file-name candidate))))
      (helm-exit-minibuffer))))

(defun helm-ff-persistent-expand-dir ()
  "Makes `helm-ff-expand-dir' the default action for
expanding helm-files."
  (interactive)
  (helm-attrset 'expand-dir 'helm-ff-expand-dir)
  (helm-execute-persistent-action 'expand-dir))


(defun helm-ff-dired-dir (candidate)
  "Determines if a persistent action is called on directories.
When `helm-ido-style-return' is non-nil then:
- `helm-execute-persistent-action' is called on files.
- `helm-exit-minibuffer' is called on directories.
Otherwise `helm-execute-persistent-action' is called.
"
  (interactive)
  (if (and helm-ido-style-return
           (file-directory-p candidate))
      (helm-exit-minibuffer)
    (helm-execute-persistent-action)))

(defun helm-ff-execute-dired-dir ()
  "Allow <M-return> to execute dired on directories in `helm-mode'.
This requires `helm-ido-style-return' to be non-nil."
  (interactive)
  (helm-attrset 'dired-dir 'helm-ff-dired-dir)
  (helm-execute-persistent-action 'dired-dir))



;;; Modify source attributes
;;
;; Add actions to `helm-source-find-files' IF:

;; (defmethod helm-setup-user-source ((source helm-source-ffiles))
;;   (helm-source-add-action-to-source-if
;;    "Byte compile file(s) async"
;;    'async-byte-compile-file
;;    source
;;    'helm-ff-candidates-lisp-p))


;;; Add magit to `helm-source-ls-git'
;;
(defmethod helm-setup-user-source ((source helm-ls-git-source))
  (let ((actions (oref source :action)))
    (set-slot-value
     source
     'action
     (helm-append-at-nth
      actions
      (helm-make-actions
       "Magit status"
       (lambda (_candidate)
         (with-helm-buffer
           (magit-status helm-default-directory))))
      1))))

(defmethod helm-setup-user-source ((source helm-source-buffers))
  (set-slot-value source 'candidate-number-limit 200))


