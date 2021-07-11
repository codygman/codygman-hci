user.emacs_mode: magit-revision-mode
-

command help:
  user.emacs_command("find-file-other-window")

  user.insert_formatted("/home/cody/devos2/profiles/develop/emacs/config/talon/emacs-talon/modes/magit-revision-mode.talon", "NOOP")

section forward:
  key(n)

section back:
  key(p)

visit current:
  key(ctrl-enter)

visit previous:
  key(enter)

# TODO I was hoping this would override my global go binding, but it doesn't
# go:  key(ctrl-enter)