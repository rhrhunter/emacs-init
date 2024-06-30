;; Register the Melpa Emacs Package Repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; [Ctrl+c -> i] -- Open the Melpa Emacs Package Screen
(defun func/open-package-installer ()
  (interactive)
  (package-refresh-contents)
  (package-list-packages)
  )
(global-set-key (kbd "C-c i") 'func/open-package-installer)
