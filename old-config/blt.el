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

;; Change some key codes.
(require 'bind-key)
(bind-key* (kbd "M-p") 'scroll-down)
(bind-key* (kbd "M-n") 'scroll-up)
