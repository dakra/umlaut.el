;;; umlaut.el --- A mode for conveniently using Umlauts in Emacs -*- lexical-binding: t -*-

;; Copyright (c) 2019 Daniel Kraus <daniel@kraus.my>

;; Author: Daniel Kraus <daniel@kraus.my>
;; URL: https://github.com/dakra/umlaut.el
;; Keywords: umlaut, convenience
;; Version: 0.1
;; Package-Requires: ((emacs "25.2"))

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Switch on 'umlaut-mode' for easier Umlaut usage

;;; Code:

;;;###autoload
(define-minor-mode umlaut-mode
  "A mode for conveniently using Umlauts in Emacs"
  nil
  :lighter " äöü"
  :keymap '(("\M-a" . (lambda () (interactive) (insert ?ä)))
            ("\M-o" . (lambda () (interactive) (insert ?ö)))
            ("\M-u" . (lambda () (interactive) (insert ?ü)))
            ("\M-s" . (lambda () (interactive) (insert ?ß)))
            ("\M-A" . (lambda () (interactive) (insert ?Ä)))
            ("\M-O" . (lambda () (interactive) (insert ?Ö)))
            ("\M-U" . (lambda () (interactive) (insert ?Ü)))
            ("\M-e" . (lambda () (interactive) (insert ?€)))
            ("\M-p" . (lambda () (interactive) (insert ?£)))
            ("\M-S" . (lambda () (interactive) (insert "SS")))))

(provide 'umlaut)
;;; umlaut.el ends here
