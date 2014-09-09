;;; starter-kit-js.el --- Some helpful Javascript helpers
;;
;; Part of the Emacs Starter Kit

(autoload 'js3-mode "js3-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js3-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))

(add-hook 'js3-mode-hook
          (lambda ()
            (tern-mode t)
            (whitespace-mode)
            (auto-complete-mode)))
(setq tern-command (cons (executable-find "tern") '()))

(custom-set-variables
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(js3-indent-dots t)
  )

'(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
'(js3-enter-indents-newline t) ; don't need to push tab before typing
'(js3-indent-on-enter-key t)   ; fix indenting before moving on

(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

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
