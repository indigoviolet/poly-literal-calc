;;; poly-literal-calc.el --- Support for literal-calc-mode blocks in org  -*- lexical-binding: t; -*-

;; Copyright (C) 2022 Venky Iyer

;; Author: Venky Iyer <indigoviolet@gmail.com>
;; Maintainer: Venky Iyer <indigoviolet@gmail.com>
;; Created: Mar 28 2022
;; Keywords: calc, languages
;; URL: https://github.com/indigoviolet/poly-literal-calc
;; Package-Version: 0.1
;; Package-Requires: ((polymode "0.2.2") (literal-calc-mode "0.1") (emacs "24.2"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;; Foo Bar
;;
;;; Code:

(require 'literal-calc-mode)
(require 'polymode)

(define-hostmode poly-literal-calc-hostmode)

(define-innermode poly-literal-calc-innermode
  :mode 'literal-calc-mode
  :head-matcher "^[ \t]*#\\+begin_example literal-calc.*\n"
  :tail-matcher "^[ \t]*#\\+end_example"
  :head-mode 'host
  :tail-mode 'host)

(define-polymode poly-literal-calc-mode
  :hostmode 'poly-literal-calc-hostmode
  :innermodes '(poly-literal-calc-innermode))

(provide 'poly-literal-calc)

;;; poly-literal-calc.el ends here
