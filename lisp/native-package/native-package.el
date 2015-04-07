;;; native-package.el --- A library for installing native packages

;;; Commentary:
;; 

;;; Code:


(require 'cl-lib)

(defun compose (f g)
  "Compose two functions together.
\nsignature (b -> c) -> (a -> b) +> a -> c"
  `(lambda (&rest args) (,f (apply ,g args))))

(defun expand-alist (alist)
  "Simplify a complex ALIST."
  (cl-loop for row in alist append
           (let ((keys (car row))
                 (vals (cdr row)))
             (cond
              ((listp keys) (mapcar #'(lambda (key) (cons key vals)) keys))
              ((atom keys)  (list row))))))

;; exec-installed-p
(unless (fboundp 'exec-installed-p)
  (defvar exec-suffix-list '("")
    "*List of suffixes for executable.")
  (defun exec-installed-p (file &optional paths suffixes)
    "Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used."
    (unless paths    (setq paths exec-path))
    (unless suffixes (setq suffixes exec-suffix-list))
    (let (files)
      (catch 'tag
        (while suffixes
          (let ((suf (car suffixes)))
            (if (and (not (string= suf ""))
                     (string-match (concat (regexp-quote suf) "$") file))
                (progn (setq files (list file))
                       (throw 'tag nil))
              (setq files (cons (concat file suf) files)))
            (setq suffixes (cdr suffixes)))))
      (setq files (nreverse files))
      (catch 'tag
        (while paths
          (let ((path (car paths))
                (files files))
            (while files
              (setq file (expand-file-name (car files) path))
              (when (file-executable-p file) (throw 'tag file))
              (setq files (cdr files)))
            (setq paths (cdr paths))))))))


(defun get-sudo-password ()
  "Get a sudo password that will last for 5 minutes (long enough to install everything)."
  (setq password-cache t)
  (setq password-cache-expiry 300)
  (password-read "Password for sudo: " "sudo"))


(defmacro concat-with (separator strings)
  "Injecting SEPARATOR, concatenate STRINGS."
  `(mapconcat #'identity ,strings ,separator))


(defun install-external-package (command &optional root-req executable)
  "Install an external package using COMMAND.
Optional argument ROOT-REQ Does this command require root access?
Optional argument EXECUTABLE An alternative name for the executable if it differs from the package name."
  (let* ((expanded (split-string command))
         (package-manager (car expanded))
         (package (car (last expanded)))
         (proc-name (concat-with "-" expanded)))
    
    (when (and (exec-installed-p package-manager)
               (not (exec-installed-p (or executable package))))
      (let ((sudo-prefix (when root-req
                           (list "echo" (shell-quote-argument (get-sudo-password)) "| sudo -S"))))
        (start-process-shell-command
         proc-name (concat "*" proc-name "*")
         (concat-with " " (flatten (list (optionally sudo-prefix)
                                         package-manager
                                         (cdr expanded)))))))))

(defvar distro-package-managers
  ;; These are organized by (PLATFORM (COMMAND UPDATE SEARCH INSTALL SUDO-P))
  ;; Platform may be a list of distros, which are then
  ;; expanded by expand-alist
  (expand-alist
   '((("debian" "ubuntu")
      ("apt-get" "update" nil "install" t)) ;; Debian derivatives use 'apt-cache' for searching, a separate tool
     (("fedora" "centos")
      ("yum" "update" "search" "install" t))
     (("darwin" "macos")
      ("brew" "update" "search" "install" nil)
      ("port" "sync" "search --name" "-v install" t))
     ("arch"
      ("pacman" "-Sy" "-Ss" "-S"  t)
      ("yaourt" "-Sy" "-Ss" "-S"  nil)
      ("packer"))))) 


(defvar language-package-managers
  ;; These are triples of (LANGUAGE COMMAND SUDO-P)
  (string-prefix-p () (exec-installed-p "ruby"))
  '((python  "pip")
    (python3 "pip3")
    (ruby    "gem")
    (go      "go")
    (ocaml   "opam")
    (nodejs  "npm")
    (perl    "cpan")))

(provide 'native-package)

;;; native-package.el ends here
