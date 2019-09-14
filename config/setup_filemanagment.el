;;
;; File Buffer Encoding
;;
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;
;; Backup-/Lock-Files and Autosave
;;
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)


;;
;; File-Explorer
;;
(use-package
  neotree
  
  :ensure t

  :config
  (setq neo-show-hidden-files t)
  )

(provide 'setup_filemanagment)
