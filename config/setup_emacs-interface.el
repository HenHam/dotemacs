;;
;; 
;;
(use-package
  ido-completing-read+

  :ensure t

  :config
  (ido-ubiquitous-mode 1))

(use-package
  ido

  :ensure
  t

  :requires
  (ido-completing-read+ crm-custom)

  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (flx-ido-mode 1)
  (set-default 'imenu-auto-rescan t)
  (define-key ido-common-completion-map (kbd "SPC") 'ido-restrict-to-matches)
  (define-key ido-file-completion-map (kbd "C-w") 'ido-delete-backward-updir)
  
  ;; Add more
  )

(use-package
  ido-vertical-mode

  :ensure
  t

  :requires
  (ido)

  :config
  (ido-vertical-mode 1))

(use-package
  smex
  
  :ensure t

  :config
  (smex-initialize)

  :commands
  (smex)

  :bind
  (("M-x" . smex))

  ;; Add more
  )

(provide 'setup_emacs-interface)
