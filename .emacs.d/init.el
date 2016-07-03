;; MELPA package manager

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; configurations made by Custom ('M-x customize')

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; enable Winner mode: Cycle window configuration history by 'C-c
;; left' / 'C-c right'
(winner-mode t)
