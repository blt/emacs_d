(require 'cl)
(require 'package)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file (concat user-emacs-directory "packages.el"))
(load-file (concat user-emacs-directory "blt.el"))
(load-file (concat user-emacs-directory "ido.el"))
(load-file (concat user-emacs-directory "rust.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(before-save-hook (quote (copyright-update delete-trailing-whitespace)))
 '(create-lockfiles nil)
 '(inhibit-startup-screen t)
 '(lsp-rust-all-features t)
 '(lsp-rust-clippy-preference "on")
 '(lsp-rust-server (quote rust-analyzer))
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-sideline-enable nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (rust-mode company-lsp flycheck yaml-mode ripgrep ido-completing-read+ cargo lsp-rust lsp-ui lsp-mode smex markdown-mode company bind-key)))
 '(rust-format-on-save t t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
