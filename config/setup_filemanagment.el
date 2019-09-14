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
;; Projectile
;;
(use-package
  counsel-projectile

  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  
  (setq
   projectile-completion-system 'ivy
   projectile-file-exists-remote-cache-expire 300
   projectile-file-exists-local-cache-expire nil
   projectile-enable-idle-timer t
   projectile-mode-line-prefix " ")
  (counsel-projectile-mode)
  (add-to-list 'projectile-globally-ignored-directories "node_modules")
  (add-to-list 'projectile-globally-ignored-directories "dist")
  (add-to-list 'projectile-globally-ignored-directories "elpa")
  (add-to-list 'projectile-globally-ignored-directories "cache")
  (add-to-list 'projectile-globally-ignored-directories ".cache")
  )

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
