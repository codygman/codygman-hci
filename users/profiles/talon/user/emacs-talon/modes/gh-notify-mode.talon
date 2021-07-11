user.emacs_mode: gh-notify-mode
-

refresh: key(G)
clear:
  key(ctrl-c ctrl-k)
  user.emacs_command("gh-notify-limit-type-none")
  key(/ /)

type clear:
  user.emacs_command("gh-notify-limit-type-none")

(smith | muff):
  user.insert_formatted("smurf", "NOOP")

# Type / i to limit to issue notifications.

# Type / p to limit to pull request notifications.

# Type / a to limit to assign notifications.

# Type / y to limit to author notifications.

# Type / m to limit to mention notifications.
reason mention:
  key(/ m)

# Type / t to limit to team-mention notifications.

# Type / s to limit to subscribed notifications.

# Type / c to limit to comment notifications.
reason comment:
  key(/ c)

# Type / r to limit to review-requested notifications.

# Type / / to remove any active reason limit.
reason clear:
  key(/ /)

# Type / * to only show marked notifications.

# Type / / to remove the current limit and show all notifications.