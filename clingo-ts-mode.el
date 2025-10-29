;;; clingo-ts-mode.el --- An clingo treesitter mode -*- lexical-binding: t; no-byte-compile: t; -*-
;; Copyright (C) 2025 john
;;
;; Author: john <https://github.com/jgrey4296>
;; Created: October 29, 2025
;; Modified: October 29, 2025
;; Version: 0.1.0
;; Keywords:
;; Homepage: https://github.com/jgrey4296/clingo-ts-mode
;; Package-Requires: ((emacs "30.2"))
;; Package written on: ((emacs 30.2))
;;
;; This file is not part of GNU Emacs.
;;

;;; Commentary:
(defconst clingo-ts-mode-version "0.1.0")

;;-- keymap

(defvar-local clingo-ts-mode-map
    (make-sparse-keymap))

;;-- end keymap

;;-- font lock


;;-- end font lock

;;-- mode definition

(define-derived-mode clingo-ts-mode prog-mode
    ""
    (interactive)
    (kill-all-local-variables)
    (use-local-map -mode-map)

    ;; font-lock-defaults: (keywords disable-syntactic case-fold syntax-alist)
    (set (make-local-variable 'font-lock-defaults) (list -font-lock-keywords nil))
    ;; (set (make-local-variable 'font-lock-syntactic-face-function) '-syntactic-face-function)
    ;; (set (make-local-variable 'indent-line-function) '-indent-line)
    (set (make-local-variable 'comment-style) '(plain))
    (set (make-local-variable 'comment-start) "//")
    (set (make-local-variable 'comment-use-syntax) t)
    (set-syntax-table -mode-syntax-table)
    ;;
    (setq major-mode '-mode)
    (setq mode-name "")
    (outline-minor-mode)
    (yas-minor-mode)
    (run-mode-hooks)
    )
(add-to-list 'auto-mode-alist '("\.\'" . -mode))

;;-- end mode definition

(provide 'clingo-ts-mode)
;; Local Variables:
;; read-symbol-shorthands: (
;; ("blah-" . "blah-")
;; )
;; End:
;;; clingo-ts-mode.el ends here
