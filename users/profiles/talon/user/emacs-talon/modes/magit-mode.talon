user.emacs_mode: magit-status-mode
-

command help:
  user.emacs_command("find-file-other-window")
  user.insert_formatted("/home/cody/devos2/profiles/develop/emacs/config/talon/emacs-talon/modes/magit-mode.talon", "NOOP")

process:
  user.emacs_command("magit-process-buffer")

refresh: key(g)

(deaf | if ):
  key(d)

(deaf | if ) range:
  key(d r)
  key(tab)

commit options:
  key(c)

commit:
  key(c c)

commit amend:
  key(c a)

commit no verify <user.text>$:
  key(c - n c)
  user.insert_formatted(text, "NOOP")

commit only no verify:
  key(c - n c)

commit finish:
  key(ctrl-c ctrl-c)

finish:
  key(ctrl-c ctrl-c)

stage:
  key(s)

unstage:
  key(u)

section forward:
  key(alt-n)

section back:
  key(alt-p)

section jump:
  key(j)

jump:
  key(j)

jump stage:
  key(j)
  key(s)

(jump on stage | jump and staged | jump on staged ):
  key(j u)

log:
  key(l l)

log options:
  key(l l)

push options:
  key(P)

push:
  key(P p)

pull:
  key(F p)

pull options:
  key(F p)

# should this be upstream instead of main?
pull main:
  key(f a)
  key(F e)
  user.insert_formatted("origin/master", "NOOP")
  key(enter)

branch spinoff:
  key(b s)

maquit:
  key(q)

(checkout | check out):
  key(b)

(checkout | check out) branch:
  key(b b)

(notifications poor all | notifications pull all):
  user.emacs_command("forge-pull")

(notifications poor | notifications pull ):
  user.emacs_command("gh-notify")

review:
  user.emacs_command("github-review-forge-pr-at-point")

stash:
  key(z z)