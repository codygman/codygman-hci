user.emacs_mode: magit-diff-mode
-

command help:
  user.emacs_command("find-file-other-window")

  user.insert_formatted("/home/cody/devos2/profiles/develop/emacs/config/talon/emacs-talon/modes/magit-revision-mode.talon", "NOOP")

section forward:
  key(alt-n)

section backward:
  key(alt-p)

(change | hunk | hunt) revert:
  key(v)

commit revert:
  key(V)