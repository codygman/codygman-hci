user.emacs_mode: org-mode
-

heading (previous | up):
  key(ctrl-c ctrl-p)

heading (next | down):
  key(ctrl-c ctrl-n )

heading backward:
  key(ctrl-c ctrl-b)

heading forward:
  key(ctrl-c ctrl-f)

heading delete:
  key(alt-h)
  user.emacs_command("org-delete-backward-char")

heading first only:
  user.insert_formatted("* ", "NOOP")

heading first <user.text>$:
  user.insert_formatted("* ", "NOOP")
  user.insert_formatted(text, "NOOP")

heading only:
  key(ctrl-e)
  key(ctrl-enter)

heading <user.text>$:
  key(ctrl-e)
  key(ctrl-enter)
  user.insert_formatted(text, "NOOP")

heading to do <user.text>$:
  user.emacs_command("org-insert-todo-heading-respect-content")
  user.insert_formatted(text, "NOOP")

heading no:
  key(ctrl-e)
  key(ctrl-c o h i H)

heading move down:
  user.emacs_command("org-metadown")

heading move up:
  user.emacs_command("org-metaup")

subheading <user.text>$:
  key(ctrl-e)
  key(ctrl-c o h i s)
  user.insert_formatted(text, "NOOP")

heading promote:
  # user.emacs_command("org-demote-subtree")
  key(ctrl-c ctrl-<)

heading (demote | the mote | them out):
  # user.emacs_command("org-demote-subtree")
  key(ctrl-c ctrl->)

heading (and direct | indirect):
  # user.emacs_command("org-demote-subtree")
  key(ctrl-c ctrl-x b)

subheading no:
  key(ctrl-e)
  key(ctrl-c o h i s)

# org-roam
(roam | rome ) link insert:
  user.emacs_command("org-roam-node-insert")

roam link insert <user.text>$:
  user.emacs_command("org-roam-node-insert")
  user.insert_formatted(text, "NOOP")

(roam | rome ) back links:
  user.emacs_command("org-roam-buffer-toggle")

source next:
  # user.emacs_command("org-babel-next-src-block")
  # key(enter)
  key(ctrl-c ctrl-v n)


source previous:
  # user.emacs_command("org-babel-next-src-block")
  # key(enter)
  key(ctrl-c ctrl-v p)


source execute:
  key(ctrl-c ctrl-c)

# TODO frequently used, so turn it into a key binding to avoid delay
[source block] (elis | you lisp | e lisp):
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("elisp", "NOOP")
  key(enter)
  
# TODO frequently used, so turn it into a key binding to avoid delay
[source block] shell:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("sh", "NOOP")
  key(enter)

# TODO frequently used, so turn it into a key binding to avoid delay
[source block] (haskell | hash shell):
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("haskell", "NOOP")
  key(enter)

# TODO frequently used, so turn it into a key binding to avoid delay
[source block] example:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("ex", "NOOP")
  key(enter)

link next$: user.emacs_command("org-next-link")

link previous$: user.emacs_command("org-previous-link")

tag: key(ctrl-c ctrl-q)

essex:
  user.insert_formatted("()", "NOOP")

something unique to do:
  key(ctrl-c ctrl-t)

clock in:
  key(ctrl-c ctrl-x tab)

clock out:
  key(ctrl-c ctrl-x ctrl-o)

clock cancel:
  key(ctrl-c ctrl-x ctrl-q)

export:
  user.emacs_command("org-org-export-as-org")

export options:
  key(ctrl-c ctrl-e)

property:
    key(ctrl-c ctrl-x p)

done:
  key(ctrl-c ctrl-t d)

todo:
  key(ctrl-c ctrl-t t)

(kill | cancel):
  key(ctrl-c ctrl-t k)