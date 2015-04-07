;;; native-package-test.el --- native-package: unit tests



;;; Commentary:
;;

;;; Code:

(require 'ert)
(require 'ert-expectations)

(add-to-list 'load-path "../")
(require 'native-package)

(expectations
 (desc "expand-alist")

 ;; Identity: same input and output
 (expect '((a . b) (c . d))
   (expand-alist '((a . b) (c . d))))


 ;; Simple expansion: multiple keys to values
 (expect '((a . c) (b . c) (d . f) (e . f))
   (expand-alist '(((a b) . c) ((d e) . f))))

 ;; Mixed expansion: multiple and single keys
 (expect '((a . c) (b . c) (d . e))
   (expand-alist '(((a b) . c) (d . e))))

 ;; List expansion
 (expect '((a c d e) (b c d e))
   (expand-alist '(((a b) c d e))))
 
 )

(provide 'native-package-test)

;;; native-package-test.el ends here
