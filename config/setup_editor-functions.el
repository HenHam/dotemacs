;;
;; Scrolling
;;
(let ((n 5))
  (setq scroll-step 1)
  (setq scroll-conservatively n)
  (setq scroll-margin n))

;;
;; Tabs and Lines
;;
(setq-default indent-tabs-mode nil)
(setq-default truncate-lines t)

;;
;; mode-line
;;
(column-number-mode 1)

;;
;; Higlighting
;;
(global-hl-line-mode 1) ; Highlighting line

(show-paren-mode 1) ;highlight brackets
(setq show-paren-style 'expression)

;;
;; Expand region
;;
(use-package
  expand-region

  :ensure t

  :bind
  (("C-." . er/expand-region)
   ("C-," . er/contract-region))
  )

;;
;; Multiple Cursors
;;
(use-package
  multiple-cursors

  :ensure t)

(provide 'setup_editor-functions)
