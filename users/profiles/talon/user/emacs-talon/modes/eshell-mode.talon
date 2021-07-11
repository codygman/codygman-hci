user.emacs_mode: eshell-mode
-
command previous: key(alt-p)
command next: key(alt-n)
command previous match: user.emacs_command("consult-history")
command history: user.emacs_command("consult-history")
truncate: user.emacs_command("eshell-truncate-buffer")
(kellen put | kill input): key(ctrl-e ctrl-c ctrl-u)
kill output: key(ctrl-c ctrl-o)
prompt next: key(ctrl-c ctrl-n)
prompt previous: key(ctrl-c ctrl-p)
beginning: user.emacs_command("eshell-bol")
(cd | city):
  user.insert_formatted("cd ", "NOOP")
interrupt: key("ctrl-c ctrl-c")