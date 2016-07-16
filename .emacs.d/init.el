(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; configurations made by Custom ('M-x customize')

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Changes all yes/no questions to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; enable solarized theme
(use-package color-theme
  :ensure t)
(use-package color-theme-solarized
  :ensure t
  :demand t
  :config
  (load-theme 'solarized))

(use-package diminish)

(use-package whitespace
  :diminish)

;; enable Winner mode: Cycle window configuration history by 'C-c
;; left' / 'C-c right'
(use-package winner
  :config
  (winner-mode))

;; on macOS, graphical Emacs doesn't run with shell environment, so
;; copy PATH etc. from shell.
(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

;; programming stuff
(use-package magit
  :ensure t
  :demand t
  :bind (("C-x g" . magit-status)
	 ("C-x M-g" . magit-dispatch-popup))
  :config
  (global-magit-file-mode))

(use-package ido
  :ensure t
  :demand t
  :init
  (setq ido-auto-merge-work-directories-length -1)
  (setq ido-enable-flex-matching t)
  (setq ido-use-virtual-buffers t)
  :config
  (ido-mode)
  (ido-everywhere))

(use-package ido-ubiquitous
  :ensure t
  :config
  (ido-ubiquitous-mode))

(use-package markdown-mode)

(use-package company
  :ensure t
  :diminish)

(use-package smartparens
  :ensure t
  :diminish
  :init
  (setq sp-autoinsert-pair nil)
  :config
  (use-package smartparens-config)
  (show-smartparens-global-mode)
  (smartparens-global-mode))

(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package projectile
  :diminish
  :config
  (projectile-global-mode))

;; rust specific configs
(use-package rust-mode
  :config

  (use-package cargo
    :diminish
    :config
    (add-hook 'rust-mode-hook #'cargo-minor-mode))

  (use-package flycheck-rust
    :diminish
    :config
    (add-hook 'rust-mode-hook
	      '(lambda ()
		 (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))))

  (use-package racer
    :diminish
    :init
    (setq company-tooltip-align-annotations t)
    (add-hook 'rust-mode-hook #'racer-mode)

    :config
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (add-hook 'racer-mode-hook #'company-mode)

    :bind (:map rust-mode-map
		("TAB" . company-indent-or-complete-common))))

;; Make C-a toggle between beginning of line and indentation
(defun beginning-of-line-or-code ()
  "move to beginning of line, or indentation"
  (interactive)
  (if (bolp)
      (back-to-indentation)
    (beginning-of-line)))
(defun beginning-of-code-or-line ()
  "move to first non-whitespace character, or beginning of line"
  (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))

(global-set-key (kbd "C-a") 'beginning-of-line-or-code)
