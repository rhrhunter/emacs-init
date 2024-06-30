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