(setq exec-path (append exec-path '("/opt/homebrew/bin")))
(setq exec-path (append exec-path '("/opt/homebrew/lib")))
(setq exec-path (append exec-path '("/opt/homebrew/sbin")))
(setq exec-path (append exec-path '("/Users/hrivera/go/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/lib"))
(setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/sbin"))
(setenv "PATH" (concat (getenv "PATH") ":/Users/hrivera/go/bin"))
