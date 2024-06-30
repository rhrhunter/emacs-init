

;; Prevent Emacs from creating backups of files 
(setq backup-inhibited t)

;; Prevent Emacs from auto-saving files
(setq auto-save-default nil)

;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; Make it so all '.js' files auto load 'rjsx-mode'
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

;; Disable tab characters in indentation
(setq-default indent-tabs-mode nil)

;; Use 4 spaces when tabbing HTML elements
(setq-default sgml-basic-offset 4)


;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom Key Bindings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;


;; Ctrl+c key bindings

