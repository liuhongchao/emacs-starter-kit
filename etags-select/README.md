# Etags Select(NOT OFFICIAL VERSION) #
Etags Select provides a feature to find tag from multiple tag files,
and if there are multiple matching tags, it will open a selection
window for you to choose the one you want.

This one optimized for Ruby/Rails project, haven't test for any other
language.

## What changed?

1. As we know that there are lots of ruby methods end with question
mark, these methods can't be find by the official version.

2. Methods ending with equal sign may be find and redirect to the same named
method without the equal sign in the official version(sometime).

**You may also need the follow snippets in your Emacs dotfile**

```lisp
(defun hbin-ruby-mode-init ()
  (modify-syntax-entry ?? "w")
  (modify-syntax-entry ?! "w"))

(add-hook 'ruby-mode-hook 'hbin-ruby-mode-init)
```

**According to witch template language you prefer, you may also need some snippets as follow**

```lisp
(defun hbin-slim-mode-init ()
  (modify-syntax-entry ?? "w")
  (modify-syntax-entry ?! "w"))

(add-hook 'slim-mode-hook 'hbin-slim-mode-init)
```
## About Me

My name is [Huang Bin](mailto:embrace.hbin@gmail.com).
I am a big fans of Emacs and I am very interesting in Ruby on Rails and FP.
