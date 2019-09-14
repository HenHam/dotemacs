;; =============================================================================
;; Package basic installation
;; =============================================================================
;;

;; NOTE: Packages which should always be loaded
(defvar default-packages
  '(use-package))

(require 'package)
(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")))


(setq package-enable-at-startup nil)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p default-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)))


(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; =============================================================================
;; Requires
;; =============================================================================

(require 'use-package)
(require 'setup_use-package)


(require 'setup_emacs)

(require 'setup_editor-functions)
(require 'setup_prog-mode)

(require 'setup_filemanagment)
(require 'setup_version-control)

(require 'lang_clojure)

(provide 'main_config)
