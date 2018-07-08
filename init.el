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
 '(create-lockfiles nil)
 '(inhibit-startup-screen t)
 '(lsp-ui-sideline-enable nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (yaml-mode ripgrep ido-completing-read+ cargo lsp-rust lsp-ui lsp-mode smex markdown-mode company bind-key)))
 '(rust-format-on-save t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
