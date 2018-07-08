(require 'lsp-mode)
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(with-eval-after-load 'lsp-mode
  (setq lsp-rust-rls-command '("rustup" "run" "stable" "rls"))
  (require 'lsp-rust))

(add-hook 'rust-mode-hook #'lsp-rust-enable)
(add-hook 'rust-mode-hook #'flycheck-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(setq company-tooltip-alignt-annotations t)

(setq rust-format-on-save t)
