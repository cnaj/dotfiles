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

;; enable solarized theme
(load-theme 'solarized)

;; enable Winner mode: Cycle window configuration history by 'C-c
;; left' / 'C-c right'
(winner-mode t)

;; Changes all yes/no questions to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; on macOS, graphical Emacs doesn't run with shell environment, so
;; copy PATH etc. from shell.
(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

;; programming stuff
(use-package magit
  :config
  :bind (("C-x g" . magit-status)
	 ("C-x M-g" . magit-dispatch-popup)))

(use-package smartparens
  :config
  (require 'smartparens-config))

(use-package company)

(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; rust specific configs
(use-package rust-mode)

(use-package cargo
  :config
  (add-hook 'rust-mode-hook #'cargo-minor-mode))

(use-package flycheck-rust
  :config
  (add-hook 'rust-mode-hook
	    '(lambda ()
	       (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))))

(use-package racer
  :load-path "emacs-racer/"

  :config
  (add-hook 'rust-mode-hook #'racer-mode)

  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  (setq company-tooltip-align-annotations t)

  :bind (:map rust-mode-map
	      ("TAB" . company-indent-or-complete-common)))

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
