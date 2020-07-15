(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(let* ((package--builtins nil)
       (packages
        '(
          company              ; Modular text completion framework
          company-lsp          ;
          bind-key             ; A simple way to manage personal keybindings
          markdown-mode        ; Emacs Major mode for Markdown-formatted files
          smex                 ; smart M-x
          lsp-mode             ; Minor mode for interacting with Language Servers
          lsp-ui               ; UI modules for lsp-mode
          lsp-rust             ; Rust support for lsp-mode
          company-lsp          ; completion
          rust-mode            ; It's a mode, for the Rust programming language
          cargo                ; Emacs Minor Mode for Cargo, Rust's Package Manager.
          ido-completing-read+ ; Use ido completion in every place sensible
          ripgrep              ; Front-end for ripgrep, a command line search tool
          yaml-mode            ; Major mode for editing YAML files
          rust-mode            ; Major mode for editing Rust files
         )))
  (ignore-errors ;; This package is only relevant for Mac OS X.
    (when (memq window-system '(mac ns))
      (push 'exec-path-from-shell packages)
      (push 'reveal-in-osx-finder packages))
    (let ((packages (remove-if 'package-installed-p packages)))
      (when packages
        ;; Install uninstalled packages
        (package-refresh-contents)
        (mapc 'package-install packages)))))
