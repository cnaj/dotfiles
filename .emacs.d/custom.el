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
 '(column-number-mode t)
 '(compilation-ask-about-save nil)
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
 '(frame-background-mode (quote dark))
 '(git-commit-setup-hook
   (quote
    (git-commit-save-message git-commit-setup-changelog-support git-commit-turn-on-auto-fill git-commit-propertize-diff with-editor-usage-message
			     (lambda nil
			       (whitespace-mode)))))
 '(global-auto-revert-mode t)
 '(global-whitespace-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-spacing 0.2)
 '(menu-bar-mode nil)
 '(mouse-yank-at-point t)
 '(recentf-max-menu-items 40)
 '(recentf-mode t)
 '(save-interprogram-paste-before-kill t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace t)
 '(sp-autoskip-closing-pair t)
 '(tool-bar-mode nil)
 '(which-function-mode nil)
 '(whitespace-style
   (quote
    (face tabs spaces trailing lines-tail space-before-tab indentation empty space-after-tab space-mark tab-mark))))
