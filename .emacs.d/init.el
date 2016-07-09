;; MELPA package manager

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

;; configurations made by Custom ('M-x customize')

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; enable Winner mode: Cycle window configuration history by 'C-c
;; left' / 'C-c right'
(winner-mode t)

;; enable smartparens
(require 'smartparens-config)

;; on macOS, graphical Emacs doesn't run with shell environment, so
;; copy PATH etc. from shell.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Changes all yes/no questions to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; configure use of flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
