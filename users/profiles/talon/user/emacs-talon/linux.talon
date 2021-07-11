os: linux
-

# I should use a tilling window manager instead of implementing this
# snap left:


email work:
    user.insert_formatted("cody.goodman@acilearning.com", "NOOP")

email personal:
    user.insert_formatted("cody@codygman.dev", "NOOP")

application launcher:
  key(alt-f2)

# github

benito flakes:
  user.system_command_nb("systemctl suspend")

(gethub cobock | it hub codebook):
  user.insert_formatted("```\n\n```", "DASH_SEPARATED")
  key( up)

screenshot:
  user.system_command("io.elementary.screenshot-tool")
