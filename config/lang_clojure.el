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

(provide 'lang_clojure)
