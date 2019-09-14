(use-package
  clojure-mode-extra-font-locking)

(use-package
  clojure-mode

  :ensure
  t

  :requires
  (clojure-mode-extra-font-locking)

  :mode
  (("\\.edn\\'" . clojure-mode)
   ("\\.boot\\'" . clojure-mode)
   ("\\.clj\\'" . clojure-mode)
   ("\\.cljs\\'" . clojure-mode))
  )

(use-package
  cider

  :ensure t

  :after clojure-mode
  )

(provide 'lang_clojure)
