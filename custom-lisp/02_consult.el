(use-package consult
  :bind (
         ;; A recursive grep
         ("M-s M-g" . consult-grep)
         ("C-v" . consult-grep)

         ;; Search for files names recursively
         ("M-s M-f" . consult-find)
         ("C-f" . consult-find)

         ;; Search through the outline (headings) of the file
         ("M-s M-o" . consult-outline)
         ("C-o" . consult-outline)

         ;; Search the current buffer
         ("M-s M-l" . consult-line)

         ;; Switch to another buffer, or bookmarked file, or recently
         ;; opened file.
         ("M-s M-b" . consult-buffer)
         ("C-b" . consult-buffer)

         )
  )
