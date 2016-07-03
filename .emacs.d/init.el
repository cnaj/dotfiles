;; MELPA package manager

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; configurations made by Custom ('M-x customize')

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;
;; own configurations
;;

(if window-system
    (tool-bar-mode -1))
(menu-bar-mode -1)

;; enable Winner mode: Cycle window configuration history by 'C-c
;; left' / 'C-c right'
(winner-mode t)

;; enable Icomplete mode: In minibuffer, complete with 'C-j', cycling
;; with 'C-.', 'C-,'
(icomplete-mode t)
