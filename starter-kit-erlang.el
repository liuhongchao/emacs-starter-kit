;; starter-kit-erlang.el - setup of erlang stuff

;; erlang mode setup
(setq load-path (cons "~/git/klarna/OTP/otp/lib/tools/emacs/" load-path))
(setq erlang-root-dir "~/git/klarna/OTP/otp/")
(setq exec-path (cons "~/git/klarna/OTP/otp/" exec-path))
(require 'erlang-start)

(add-to-list 'load-path "~/git/edts/")
(require 'edts-start)

(setq edts-projects
      '(( ;; eduspider web
         (name       . "eduspider_web")
         (root       . "~/git/eduspider/nodes/eduspider_web/")
         (lib_dirs   . ("lib"))
         (node-sname . "eduspider_web")
        )
        ( ;; eduspider backend
         (name       . "eduspider_be")
         (root       . "~/git/eduspider/nodes/eduspider_be/")
         (lib_dirs   . ("lib"))
         (node-sname . "eduspider_be")
        )
        ( ;; rett
         (name       . "rett")
         (root       . "~/git/rett/")
         (lib_dirs   . ("lib"))
         (node-sname . "rett")
        )
        ( ;; efs
         (name       . "efs")
         (root       . "~/git/efs/nodes/efs_be")
         (lib_dirs   . ("lib" "deps"))
         (node-sname . "efs_be")
        )
        ( ;; rett_dev
         (name       . "rett")
         (root       . "~/git/rett_dev/")
         (lib_dirs   . ("lib"))
         (node-sname . "rett")
        )
        ( ;; edts
         (name       . "edts")
         (root       . "~/git/edts/")
         (lib_dirs   . ("lib"))
         (node-sname . "edts")
        )
        ( ;; edts-rte
         (name       . "edts-rte")
         (root       . "~/git/edts-rte/")
         (lib_dirs   . ("lib"))
         (node-sname . "edts")
         )
        ( ;; edts-rte
         (name       . "kred")
         (root       . "~/git/klarna/dev/")
         (lib_dirs   . ("lib" "test"))
         (node-sname . "kred")
        )
        ))

;; Some Erlang customizations
(add-hook 'erlang-mode-hook
	  (lambda ()
	    ;; when starting an Erlang shell in Emacs, default in the node name
	    (setq inferior-erlang-machine-options '("-sname" "emacs"))
	    ;; add Erlang functions to an imenu menu
	    (imenu-add-to-menubar "imenu")))

;; show the trailing whitespace
(defun 80_whitespace_and_show_trailing_ws()
  (whitespace-mode t)
  (setq whitespace-line-column 80)
  (setq show-trailing-whitespace t))

(add-hook 'erlang-mode-hook '80_whitespace_and_show_trailing_ws)
(add-hook 'erlang-mode-hook 'linum-mode)

(provide 'starter-kit-erlang)
