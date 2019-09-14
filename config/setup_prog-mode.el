;;
;; Indent
;;
(use-package
  aggressive-indent
  
  :hook (prog-mode . aggressive-indent-mode))

;;
;; line numbers
;;
(use-package
  linum
  :hook (prog-mode . linum-mode)
  :config (setq linum-format "%3d"))

;;
;; delimiter
;;
(use-package
  rainbow-delimiters
  :hook
  ((prog-mode . rainbow-delimiters-mode)
   ))

;; XXX noch in den hook aufnehmen, wenn cider am
;; Start ist.
;; (cider-repl-mode . rainbow-delimiters-mode)


;;
;; Paredit ...
;;
(use-package
  paredit

  :ensure
  t

  :defer
  t

  :hook
  ((prog-mode . paredit-mode)
   )
  ;; XXX hook erweitern wenn clojure unterstütz
  ;; wird
  ;;(prog-mode . paredit-mode)
  ;; (cider-mode . paredit-mode)
  ;; (clojure-mode . paredit-mode)
  ;; (cider-repl-mode . paredit-mode)
  ;; (with-editor-mode . paredit-mode)

  )


(provide 'setup_prog-mode)
