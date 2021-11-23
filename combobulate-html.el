;;; combobulate-html.el --- HTML and SGML-alike structured editing for combobulate  -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Mickey Petersen

;; Author: Mickey Petersen <mickey at masteringemacs.org>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:


(defun combobulate-html-pretty-print (node &optional highlighted)
  (if node
      (format "<%s>" (tsc-node-text (tsc-get-nth-named-child (tsc-get-nth-named-child node 0) 0)))
    ""))

(defun combobulate-setup-html ()
  (setq combobulate-navigation-node-types '(element))
  (setq combobulate-pretty-print-function #'combobulate-html-pretty-print))

(provide 'combobulate-html)
;;; combobulate-html.el ends here
