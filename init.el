;; We can't tangle without org!
(require 'org)

;; Open the configuration
(find-file (concat user-emacs-directory "init.org"))

;; tangle the opened "init.org" file --> When Org tangles ‘src’ code blocks, it expands, merges, and transforms them.
(org-babel-tangle)

;; load the newly created (and overwritten) init.el file which is made from the code inside init.org file
(load-file (concat user-emacs-directory "init.el"))

;; finally byte-compile the new "init.el" file to make the startup of emacs faster
(byte-compile-file (concat user-emacs-directory "init.el"))
