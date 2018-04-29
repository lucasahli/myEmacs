;; We can't tangle without org!
(require 'org)

;; Open the configuration
(find-file (concat user-emacs-directory "init.org"))

;; tangle the opened "init.org" file --> When Org tangles ‘src’ code blocks, it expands, merges, and transforms them.
(org-babel-tangle)
