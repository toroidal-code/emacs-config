;;; package-prioritize.el --- Allow prioritizing package.el archives




;;; Commentary:
;; 

;;; Code:

(require 'cl-lib)

(defcustom package-archive-priority nil
  "A list of archive names that denote priority from greatest to least."
  :group 'package)

(defun package-prioritize-descs (descs &optional archives)
  "Prioritize DESCS based on the order of ARCHIVES."
  (if (or archives
          (setf archives
                (cl-remove-duplicates (append (and (boundp 'package-archive-priority)
                                                   package-archive-priority)
                                              (mapcar #'car package-archives))
                                      :from-end t
                                      :test #'string-equal)))
      (cl-loop for archive in archives
               when (cl-loop
                     for desc in descs
                     if (string-equal archive (package-desc-archive desc))
                     return desc
                     finally return nil)
               collect it)
    descs))

(defun package-compute-transaction (packages requirements &optional seen)
  "Return a list of packages to be installed, including PACKAGES.
PACKAGES should be a list of `package-desc'.

REQUIREMENTS should be a list of additional requirements; each
element in this list should have the form (PACKAGE VERSION-LIST),
where PACKAGE is a package name and VERSION-LIST is the required
version of that package.

This function recursively computes the requirements of the
packages in REQUIREMENTS, and returns a list of all the packages
that must be installed.  Packages that are already installed are
not included in this list.

SEEN is used internally to detect infinite recursion."
  ;; FIXME: We really should use backtracking to explore the whole
  ;; search space (e.g. if foo require bar-1.3, and bar-1.4 requires toto-1.1
  ;; whereas bar-1.3 requires toto-1.0 and the user has put a hold on toto-1.0:
  ;; the current code might fail to see that it could install foo by using the
  ;; older bar-1.3).
  (dolist (elt requirements)
    (let* ((next-pkg (car elt))
	   (next-version (cadr elt))
           (already ()))
      (dolist (pkg packages)
        (if (eq next-pkg (package-desc-name pkg))
            (setq already pkg)))
      (when already
        (if (version-list-<= next-version (package-desc-version already))
            ;; `next-pkg' is already in `packages', but its position there
            ;; means it might be installed too late: remove it from there, so
            ;; we re-add it (along with its dependencies) at an earlier place
            ;; below (bug#16994).
            (if (memq already seen)     ;Avoid inf-loop on dependency cycles.
                (message "Dependency cycle going through %S"
                         (package-desc-full-name already))
              (setq packages (delq already packages))
              (setq already nil))
          (error "Need package `%s-%s', but only %s is being installed"
                 next-pkg (package-version-join next-version)
                 (package-version-join (package-desc-version already)))))
      (cond
       (already nil)
       ((package-installed-p next-pkg next-version) nil)

       (t
	;; A package is required, but not installed.  It might also be
	;; blocked via `package-load-list'.
        
        (let ((pkg-descs (package-prioritize-descs ; TODO: figure out how to inject this without needing to replicate
                                                   ;       the entire function.
                          (cdr (assq next-pkg package-archive-contents))))
              (found nil)
              (problem nil))
          (while (and pkg-descs (not found))
            (let* ((pkg-desc (pop pkg-descs))
                   (version (package-desc-version pkg-desc))
                   (disabled (package-disabled-p next-pkg version)))
              (cond
               ((version-list-< version next-version)
                (error
                 "Need package `%s-%s', but only %s is available"
                 next-pkg (package-version-join next-version)
                 (package-version-join version)))
               (disabled
                (unless problem
                  (setq problem
                        (if (stringp disabled)
                            (format "Package `%s' held at version %s, \
but version %s required"
                                    next-pkg disabled
                                    (package-version-join next-version))
                          (format "Required package '%s' is disabled"
                                  next-pkg)))))
               (t (setq found pkg-desc)))))
	  (unless found
            (if problem
                (error "%s" problem)
              (error "Package `%s-%s' is unavailable"
                     next-pkg (package-version-join next-version))))
	  (setq packages
		(package-compute-transaction (cons found packages)
					     (package-desc-reqs found)
                                             (cons found seen))))))))
  packages)

(provide 'package-prioritize)

;;; package-prioritize.el ends here
