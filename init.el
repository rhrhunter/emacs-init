;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Initialization File ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Register the Melpa Emacs Package Repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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

;; Disable the *Messages* Buffer
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Disable the *Completions* buffer
(add-hook 'minibuffer-exit-hook 
          '(lambda ()
             (let ((buffer "*Completions*"))
               (and (get-buffer buffer)
                    (kill-buffer buffer)))))

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom Key Bindings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Function key Bindings

;; [F1] -- Go to a specific line number in the current buffer (file)
(global-set-key [f1] 'goto-line)
		
;; [F2] -- Comment out a Marked (highlighted) region of text
(global-set-key [f2] 'comment-region)

;; [F3] -- Comment out a Marked (highlighted) region of text
(global-set-key [f3] 'uncomment-region)

;; [F4] -- Cleanup all trailing whitespace
(global-set-key [f4] 'whitespace-cleanup)

;; [F5] -- Switch to a different buffer (file)
(global-set-key [f5] 'bury-buffer)

;; Ctrl+c key bindings

;; [Ctrl+c -> i] -- Open the Melpa Emacs Package Screen
(defun func/open-package-installer ()
  (interactive)
  (package-refresh-contents)
  (package-list-packages)
  )
(global-set-key (kbd "C-c i") 'func/open-package-installer)

;; [Ctrl+c -> TAB] -- Mark the entire file
;; Hint: Useful for auto-formatting the entire file by pressing (Ctrl+c -> TAB -> TAB)
(global-set-key (kbd "C-c TAB") 'mark-whole-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Custom Files inside ~/.emacs.d/custom-lisp ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))
                 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/custom-lisp")
