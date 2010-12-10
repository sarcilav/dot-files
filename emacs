;; paren math
(show-paren-mode)
(menu-bar-mode)
(tool-bar-mode)
(server-mode)
;; Load path to emacs.d
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/")
	   (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))
;; Color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-midnight)
;; Template
;; (require 'template)
;; (template-initialize)			
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t);;display the column number
 '(inhibit-startup-screen t);; quit the startup screen
 '(scroll-bar-mode nil);;No scroll bar
 '(show-paren-mode t));; math (){}
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(defun indent-all()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))(interactive)
(global-set-key [f5] 'indent-all)


;;;;;;;;;;;;;; tc-TopCoder
(defun tc () (interactive)
  (compile (concat "g++ " (buffer-name)" -g -o "(substring (buffer-name) 0 -4)" && ./"(substring (buffer-name) 0 -4)))
  )
;;;;;;;;;;;;;; tc-TopCoder


