;;
;; Apperance
;;
(setq inhibit-startup-message t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; open in fullscreen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;
;; keyboard setting
;;
(cond ((eq system-type 'darwin)
       (setq mac-command-modifier 'meta
             mac-option-modifier 'none
             default-input-method "MacOSX")))


(provide 'setup_emacs)
