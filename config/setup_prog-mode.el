(use-package
  linum
  :hook (prog-mode . linum-mode)
  :config (setq linum-format "%3d"))

(use-package
  rainbow-delimiters
  :hook
  ((prog-mode . rainbow-delimiters-mode)
   ))

;; XXX noch in den hook aufnehmen, wenn cider am
;; Start ist.
;; (cider-repl-mode . rainbow-delimiters-mode)

(provide 'setup_prog-mode)
