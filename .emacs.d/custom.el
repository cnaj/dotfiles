(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 140 :family "Source Code Pro"))))
 '(whitespace-empty ((t (:background "Red" :foreground "#dc322f")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(apropos-do-all t)
 '(auto-revert-mode-text "")
 '(column-number-mode t)
 '(compilation-ask-about-save nil)
 '(compilation-mode-hook (quote ((lambda nil (toggle-truncate-lines -1)))))
 '(compilation-window-height 25)
 '(create-lockfiles nil)
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(default-frame-alist
    (quote
     ((vertical-scroll-bars)
      (width . 100)
      (height . 55))))
 '(delete-selection-mode t)
 '(frame-background-mode (quote dark))
 '(global-auto-revert-mode t)
 '(global-whitespace-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-spacing 0.2)
 '(menu-bar-mode nil)
 '(mouse-yank-at-point t)
 '(org-babel-load-languages (quote ((sh . t) (ledger . t) (emacs-lisp . t))))
 '(package-selected-packages
   (quote
    (adaptive-wrap yaml-mode dockerfile-mode use-package smartparens racer projectile markdown-mode magit ledger-mode js2-highlight-vars ido-ubiquitous git flycheck-rust exec-path-from-shell company color-theme-solarized color-theme-sanityinc-tomorrow cargo)))
 '(recentf-max-menu-items 40)
 '(recentf-mode t)
 '(save-interprogram-paste-before-kill t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace nil)
 '(sp-autoskip-closing-pair t)
 '(tool-bar-mode nil)
 '(which-function-mode nil)
 '(whitespace-line-column nil)
 '(whitespace-style
   (quote
    (face tabs spaces trailing space-before-tab indentation empty space-after-tab space-mark tab-mark)))
 '(word-wrap t))
