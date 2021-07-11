user.emacs_mode: dired-mode
-
up: key(^)
create: key(+)
create no <user.text>$:
  key(+)
  user.insert_formatted(text, "DASH_SEPARATED")
  key(ctrl-p)
  key(enter)

mark: key(m)
mark ( rax | rex | regex): key(% m)

copy: key(C)
file copy: key(C)
copy file path: key(ctrl-u 0 w)
(sink | sync) command on: key(shift-1)
[async] command on: user.emacs_command("dired-do-async-shell-command")

(audio play | play audio):
  user.emacs_command("dired-do-async-shell-command")
  user.insert_formatted("cvlc --play-and-exit", "NOOP")
  key(enter)

(audio stop | stop audio):
  user.system_command_nb("pkill -f cvlc")


the red quit: key(q)

unmark: key(u)
unmark all: key(U)

delete: key(d)
touch: key(T)
touch now: key(T enter)
details: key(()
confirm: key(x)
refresh: key(g)
revert: key(g)
sort:
  key(s)
