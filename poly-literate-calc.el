;;; poly-literate-calc.el --- Support for literate-calc-mode blocks in org  -*- lexical-binding: t; -*-

;; Copyright (C) 2022 Venky Iyer

;; Author: Venky Iyer <indigoviolet@gmail.com>
;; Maintainer: Venky Iyer <indigoviolet@gmail.com>
;; Created: Mar 28 2022
;; Keywords: calc, languages
;; URL: https://github.com/indigoviolet/poly-literate-calc
;; Package-Version: 0.1
;; Package-Requires: ((polymode "0.2.2") (literate-calc-mode "0.1") (emacs "24.2"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;; Foo Bar
;;
;;; Code:

(require 'literate-calc-mode)
(require 'polymode)

(define-hostmode poly-literate-calc-hostmode :mode nil)

(define-innermode poly-literate-calc-innermode
  :mode 'literate-calc-mode
  :head-matcher "^[ \t]*#\\+literate-calc.*\n"
  :tail-matcher "^[ \t]*#\\+end"
  :head-mode 'host
  :tail-mode 'host)

;;;###autoload (autoload 'poly-literate-calc-mode "poly-literate-calc")
(define-polymode poly-literate-calc-mode
  :hostmode 'poly-literate-calc-hostmode
  :innermodes '(poly-literate-calc-innermode))

(provide 'poly-literate-calc)

;;; poly-literate-calc.el ends here
