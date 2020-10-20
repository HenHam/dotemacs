;; csv-mode
(use-package
  csv-mode

  :ensure t

  :mode
  (("\\.csv\\'" . csv-mode))
  )


(use-package
  json-mode

  :ensure t

  :mode
  (("\\.json\\'" . json-mode))
  )

(use-package
  json-navigator

  :ensure t)

(provide 'data_modes)
