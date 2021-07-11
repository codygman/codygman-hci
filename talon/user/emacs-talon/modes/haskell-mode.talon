user.emacs_mode: haskell-mode
-

imports:
  user.emacs_command("haskell-navigate-imports")
  key(ctrl-p)
  key(enter)

exports:
  user.emacs_command("beginning-of-buffer")
  user.emacs_command("re-search-forward")
  user.insert_formatted("module [A-Z.]+", "NOOP")
  key(enter)
  user.emacs_command("re-search-forward")
  user.insert_formatted(")", "NOOP")
  key(enter)
  key(ctrl-b)

imports return:
  user.emacs_command("haskell-navigate-imports-return")

import persistent all:
  user.emacs_command("persistent-import-all")

complete:
  user.emacs_command("completion-at-point")

(is type | his type):
    user.insert_formatted(" :: ", "NOOP")

(io | I of):
    user.insert_formatted("IO ", "NOOP")

unit:
    user.insert_formatted("()", "NOOP")

actions:
  key(super-l a a)

import qualified <user.text>$:
    user.emacs_command("yas-insert-snippet")
    user.insert_formatted("import qualified", "NOOP")
    # key(enter)
    user.insert_formatted(text, "PUBLIC_CAMEL_CASE")

data in line:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("haskell data inline", "NOOP")
  user.insert_formatted(text, "PUBLIC_CAMEL_CASE")

record:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("record data", "NOOP")
  key(enter)
  # user.insert_formatted(text, "PUBLIC_CAMEL_CASE")

# to do  persistent share snippet

stub function:
  user.emacs_command("stub-haskell-function")

entity vow:
  user.insert_formatted("entityVal","NOOP")

persist answered:
  user.insert_formatted("Persist.insert","NOOP")

imports return:
  user.emacs_command("haskell-navigate-imports-return")

complete:
  user.emacs_command("completion-at-point")

(is type | his type):
    user.insert_formatted(" :: ", "NOOP")

(io | I of):
    user.insert_formatted("IO ", "NOOP")

unit:
    user.insert_formatted("()", "NOOP")

now:
  user.insert_formatted("now <- getCurrentTime","NOOP")

glue on:
  user.insert_formatted("Gluon","NOOP")

constraint mario:
    user.insert_formatted("MonadIO m => ","NOOP")

void:
    user.insert_formatted("void $ ","NOOP")

convert persist (qq | you):
  user.emacs_command("convert-to-persistent-qq")

definition:
  key(super-l g g)
