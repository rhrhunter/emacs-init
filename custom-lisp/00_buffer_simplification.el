;; Disable the *Messages* Buffer
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Disable the *Completions* buffer
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
               (and (get-buffer buffer)
                    (kill-buffer buffer)))))

;; Auto refresh buffers
(global-auto-revert-mode 1)
