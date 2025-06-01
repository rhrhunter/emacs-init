(use-package vertico
:custom
(vertico-scroll-margin 0) ;; Different scroll margin
(vertico-count 8) ;; Show more candidates
(vertico-resize nil) ;; Grow and shrink the Vertico minibuffer
(vertico-cycle t) ;; Enable cycling for `vertico-next/previous'
:init
(vertico-mode))
