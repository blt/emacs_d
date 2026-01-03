;; -*- lexical-binding: t -*-

;; Performance
(setq gc-cons-threshold 500000000)
(setq read-process-output-max (* 10 1024 1024))

;; straight.el bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(show-paren-mode -1)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq create-lockfiles nil)

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Backup/autosave directories
(setq backup-directory-alist `((".*" . ,(expand-file-name "backup/" user-emacs-directory))))
(setq auto-save-list-file-prefix (expand-file-name "autosave/" user-emacs-directory))
(setq auto-save-file-name-transforms `((".*" ,(expand-file-name "autosave/" user-emacs-directory) t)))

;; Mode-line
(setq mode-line-format (list
       mode-line-modified
       " "
       mode-line-buffer-identification
       mode-line-position
       mode-name
       " "
       mode-line-end-spaces))

;; Completion
(fido-vertical-mode 1)

;; Rust
(use-package rust-mode
  :straight (:host github :repo "rust-lang/rust-mode")
  :hook (rust-mode . eglot-ensure)
  :custom
  (rust-format-on-save t))

;; Eglot
(use-package eglot
  :straight nil
  :custom
  (eglot-autoshutdown t)
  :config
  (add-to-list 'eglot-server-programs
               '(rust-mode . ("rust-analyzer"
                              :initializationOptions
                              (:check (:command "clippy")
                               :procMacro (:enable t))))))

;; Disable flymake margin
(use-package flymake
  :straight nil
  :hook (eglot-managed-mode . (lambda () (flymake-mode -1))))

;; Keybindings
(use-package bind-key
  :config
  (bind-key* "M-p" 'scroll-down)
  (bind-key* "M-n" 'scroll-up))

;; Git
(use-package magit
  :hook (git-commit-mode . (lambda () (setq fill-column 72))))

;; Other modes
(use-package yaml-mode)
(use-package markdown-mode)

