;; MELPA package manager

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

;; configurations made by Custom ('M-x customize')

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; enable solarized theme
(load-theme 'solarized)

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

;; rust specific configs
(add-hook 'rust-mode-hook #'cargo-minor-mode)
(add-hook 'rust-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'rust-mode-hook
	  '(lambda ()
	     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
	     (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

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
