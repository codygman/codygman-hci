(push '(menu-bar-lines . 0) default-frame-alist) ;; remove mini menu
(push '(tool-bar-lines . 0) default-frame-alist) ;; remove tool icon
(push '(vertical-scroll-bars) default-frame-alist) ;; no scroll bar
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t)
(set-frame-font "DejaVu Sans Mono-16")

(require 'use-package)

(setq inhibit-startup-screen t
	  inhibit-startup-echo-area-message t)
;; (load-theme 'modus-vivendi t)
(setq debug-on-error t)
(defalias 'yes-or-no-p 'y-or-n-p)
;; Enable vertico
(use-package vertico
  :config
  (vertico-mode)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
)

;; Use the `orderless' completion style.
;; Enable `partial-completion' for files to allow path expansion.
;; You may prefer to use `initials' instead of `partial-completion'.
(use-package orderless
  :init
  (setq completion-styles '(orderless)
        completion-category-defaults nil
        completion-category-overrides '((file (styles . (partial-completion))))))

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :init
  (savehist-mode))

;; A few more useful configurations...
(use-package emacs
  :init
  ;; Add prompt indicator to `completing-read-multiple'.
  (defun crm-indicator (args)
    (cons (concat "[CRM] " (car args)) (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

  ;; Grow and shrink minibuffer
  ;;(setq resize-mini-windows t)

  ;; Do not allow the cursor in the minibuffer prompt
  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  ;; Enable recursive minibuffers
  (setq enable-recursive-minibuffers t))

;; (use-package haskell-mode
;;   :mode (("\\.hs\\'"    . haskell-mode)
;;          ("\\.cabal\\'" . haskell-cabal-mode))
;;   :hook ((haskell-mode . interactive-haskell-mode)))

;; (use-package haskell-mode
;;   :init
;;   (require 'haskell-interactive-mode)
;;   (require 'haskell-process)
;;   (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;;       (add-hook 'haskell-mode-hook 'haskell-indentation-mode))


(require 'use-package)

(use-package haskell-mode
  :mode (("\\.hs$" . haskell-mode))
  :hook
  (haskell-mode . interactive-haskell-mode)
  )


