(require 'org)
(require 'f)
(require 'server)
(setq debug-on-error t)
(defun add-tangle-headers ()
    (message "adding tangle headers in %s" (buffer-file-name))
    (cond
     ((f-ext? (buffer-file-name) "el")
      (goto-char (point-min))
      (insert ";; -*- lexical-binding: t -*-\n"))
     (t nil))
    (message "add-tangle-headers: saving buffer")
    (let ((buffer-save-without-query t)) (save-buffer))
    (message "add-tangle-headers: saved buffer"))

(add-hook 'org-babel-post-tangle-hook 'add-tangle-headers)
(message "tangle headers such as lexical binding after babel tangle")

;; TODO don't hardcode this m8
;; (org-babel-load-file "/home/cody/.emacs.d/readme.org")
(org-babel-load-file "/home/cody/.emacs.d/vanilla.org")

(setq debug-on-error nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((eval setq-local org-roam-db-location
	   (expand-file-name "./org-roam.db"))
     (eval setq-local org-roam-directory
	   (expand-file-name "."))
     (eval setq-local org-roam-db-location
	   (expand-file-name "~/tech-roam/org-roam.db"))
     (eval setq-local org-roam-directory
	   (expand-file-name "~/tech-roam/"))
     (org-roam-db-location . "./org-roam.db")
     (org-roam-directory . ".")
     (eval add-hook 'after-save-hook
	   (lambda nil
	     (if
		 (y-or-n-p "Tangle?")
		 (org-babel-tangle)))
	   nil t)
     (eval add-hook 'after-save-hook
	   (lambda nil
	     (if
		 (y-or-n-p "Reload?")
		 (load-file user-init-file)))
	   nil t))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(consult-preview-cursor ((t (:inherit nil))))
 '(fixed-pitch ((t (:family "DejaVu Sans Mono" :height 160))))
 '(modus-theme-heading-1 ((t (:inherit bold :foreground "#ffffff" :weight semi-light))) t)
 '(org-agenda-date ((t (:foreground "#00d3d0" :family "Lato"))))
 '(org-agenda-done ((t (:foreground "#70c900" :family "Lato"))))
 '(org-agenda-structure ((t (:foreground "#79a8ff" :family "Lato"))))
 '(org-done ((t (:foreground "dark gray" :strike-through t :slant italic :weight normal :height 0.8))))
 '(org-drawer ((t (:inherit fixed-pitch :foreground "#a8a8a8" :height 0.6))))
 '(org-headline-done ((t (:inherit modus-theme-variable-pitch :foreground "dark gray" :strike-through t :slant italic :weight normal :height 0.9))))
 '(org-level-1 ((t (:inherit modus-theme-heading-1 :extend nil))))
 '(org-priority ((t (:foreground "#feacd0" :height 0.8))))
 '(org-scheduled-previously ((t (:foreground "#f0ce43" :family "Lato"))))
 '(org-scheduled-today ((t (:foreground "#b6a0ff" :family "Lato"))))
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch) :foreground "dark gray" :height 0.6))))
 '(org-super-agenda-header ((t (:inherit org-agenda-structure :family "Lato"))))
 '(org-tag ((t (:foreground "pale goldenrod" :height 0.9))))
 '(org-todo ((t (:foreground "light salmon" :weight normal :height 0.8))))
 '(tab-bar ((t (:background "#2c2c2c" :foreground "#ffffff" :height 0.5))))
 '(variable-pitch ((t (:height 180 :family "Lato")))))
