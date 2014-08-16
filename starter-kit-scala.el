;;; starter-kit-scala.el --- Some helpful Scala helpers
;;
;; Part of the Emacs Starter Kit

(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(provide 'starter-kit-scala)
;;; starter-kit-scala.el ends here
