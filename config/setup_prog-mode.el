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
   (cider-repl-mode . rainbow-delimiters-mode)))

;;
;; Textcompletion
;;
(use-package
  company
  :diminish (company-mode eldoc-mode)
  :hook
  ((prog-mode . company-mode)
   (cider-repl-mode . company-mode))
  
  :config
  (setq company-tooltip-align-annotations t)
  ;; How long should company wait after a keystroke to display
  (setq company-idle-delay 0.15)

  ;; How many characters should be written before company is displayed?
  (setq company-minimum-prefix-length 1))


(use-package
  company-quickhelp
  :after company
  :hook
  ((prog-mode . company-quickhelp-mode)
   (cider-repl-mode . company-quickhelp-mode))
  :config (setq company-quickhelp-delay 0.2))


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
   (cider-mode . paredit-mode)
   (clojure-mode . paredit-mode)
   (cider-repl-mode . paredit-mode)))

;;
;; Navigation
;;
(use-package
  highlight-symbol

  :hook
  ((prog-mode . highlight-symbol-mode)
   (cider-repl-mode . highlight-symbol-mode))
  
  :config
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  (setq highlight-symbol-on-navigation-p t)
  (setq highlight-symbol-idle-delay 0.8)

  :bind
  (("M-n" . highlight-symbol-next)
   ("M-p" . highlight-symbol-prev)))


(provide 'setup_prog-mode)
