;;; focal.el --- hide distractive objects

;; Copyright (C) 2013-2015 zk_phi

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

;; Author: zk_phi, Katherine Whitlock
;; Version: 1.0.0

;;; Change Log:

;; 1.0.0 first released

;;; Commentary:

;;; Code:
(defconst focal-version "0.1.0")

;; + customs

(defgroup focal nil
  "smooth-scrolling and minimap, like sublime editor"
  :group 'emacs)

(defcustom focal-mode-hook nil
  "Hook run when entering focal-mode."
  :group 'focal)

;; + minor mode

;;;###autoload
(define-minor-mode focal-mode
  "focus"
  :init-value nil
  :lighter " focal"
  (cond (focal-mode
         (add-hook 'window-configuration-change-hook 'focal-window-change t t)
         (focal-window-change))
        (t
         (remove-hook 'window-configuration-change-hook 'focal-window-change t)
         (set-window-margins (get-buffer-window) nil))))

(defcustom focal-centering-width 79
  "When non-nil, buffer width is truncated to this value and display centered."
  :group 'focal)

(defun focal-hide-bars ()
  (interactive)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(defun focal-hide-vertical-border ()
  (interactive)
  (set-face-foreground 'vertical-border (face-background 'default)))

(defun focal-hide-fringes ()
  (interactive)
  (set-face-background 'fringe (face-background 'default))
  (set-face-foreground 'fringe (face-background 'default)))

(defun focal-hide-modeline ()
  (interactive)
  (setq-default mode-line-format nil))

(defun focal--window-width (window)
  (let ((margins (window-margins window)))
    (+ (window-width window) (or (car margins) 0) (or (cdr margins) 0))))

(defun focal-window-change ()
  (let ((window (get-buffer-window)))
    (unless (window-minibuffer-p window)
      (let* ((target (with-selected-window window
                       focal-centering-width))
             (margin (and target
                          (max (/ (- (focal--window-width window)
                                     target)
                                  2)
                               0))))
        (when margin
          (set-window-margins window margin margin))))))

;; + provide

(provide 'focal)

;;; focal.el ends here
