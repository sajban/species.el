;;; species.el --- Basic types for elisp  -*- lexical-binding: t; -*-

;; Author:  Li @li:maisiliym.uniks
;; Version: 0.0.1
;; Keywords: types

;; There is no necessary valuational link between the conceptual
;; features of ideas contemplated in abstract terms and the conceptual
;; features of specific goods that incorporate those ideas

;;; Commentary:

;; Simply a few missing elisp types
;;
;;; Code:

(require 'eieio)

(cl-deftype vector-of (elem-type)
  `(and vector
        (satisfies ,(lambda (vector)
                      (cl-every (lambda (elem) (cl-typep elem elem-type))
                                vector)))))

;;; species.el ends here
