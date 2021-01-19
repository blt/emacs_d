(setq mode-line-format (list
;       "%e"
;       mode-line-front-space
;       mode-line-mule-info
;       mode-line-client
       mode-line-modified
;       mode-line-remote
;       mode-line-frame-identification
       " "
       mode-line-buffer-identification
;       "   "
       mode-line-position
;       (vc-mode vc-mode)
;       "  "
;       mode-line-modes
       mode-name
       " "
;       mode-line-misc-info
       mode-line-end-spaces
       ))

;; Don't highlight anything unless I demand it.
(show-paren-mode -1)

;; Prefer to have 80 columns of width
(setq-default fill-column 80)

;; Never generate tabs
(setq-default indent-tabs-mode nil)

;; Delete trailing spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Set the backup/autosave directory
(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))

;; Never generate tabs.
(setq-default indent-tabs-mode nil)

;; Change some key codes.
(require 'bind-key)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(bind-key* (kbd "M-p") 'scroll-down)
(bind-key* (kbd "M-n") 'scroll-up)

;; lsp-mode
(require 'lsp)
(require 'lsp-mode)
(require 'lsp-ui)
(add-hook 'rust-mode-hook #'lsp)
(setq lsp-signature-auto-activate nil)


(defun insert-lstlisting ()
  "Insert lstlisting pair at cursor point."
  (interactive)
  (insert "\\begin{lstlisting}\n\n\\end{lstlisting}")
  (backward-char 17))
