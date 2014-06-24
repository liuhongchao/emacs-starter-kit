;;; starter-kit-js.el --- Some helpful Javascript helpers
;;
;; Part of the Emacs Starter Kit

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

(add-hook 'css-mode-hook
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            (define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)))

(setq slime-contribs '(slime-js))

;;(autoload 'espresso-mode "espresso" "Start espresso-mode" t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
;;(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
;;(add-hook 'espresso-mode-hook 'moz-minor-mode)
;;(add-hook 'espresso-mode-hook 'esk-paredit-nonlisp)
;;(add-hook 'espresso-mode-hook 'run-coding-hook)
;;(setq espresso-indent-level 2)
;;
;;;; If you prefer js2-mode, use this instead:
;;(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode)) 
;;
;;(eval-after-load 'espresso
;;  '(progn (define-key espresso-mode-map "{" 'paredit-open-cxpackurly)
;;          (define-key espresso-mode-map "}" 'paredit-close-curly-and-newline)
;;          ;; fixes problem with pretty function font-lock
;;          (define-key espresso-mode-map (kbd ",") 'self-insert-command)
;;          (font-lock-add-keywords
;;           'espresso-mode `(("\\(function *\\)("
;;                             (0 (progn (compose-region (match-beginning 1)
;;                                                       (match-end 1) "ƒ")
;;                                       nil)))))))

(provide 'starter-kit-js)
;;; starter-kit-js.el ends here
