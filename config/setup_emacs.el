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
;; mode-line
;;
(column-number-mode 1)



(provide 'setup_emacs)
