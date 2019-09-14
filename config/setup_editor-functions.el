;;
;; Tabs and Lines
;;
(setq-default indent-tabs-mode nil)
(setq-default truncate-lines t)

;;
;; expand region
;;
(use-package
  expand-region

  :ensure t

  :bind
  (("C-." . er/expand-region)
   ("C-," . er/contract-region))
  )

(provide 'setup_editor-functions)
