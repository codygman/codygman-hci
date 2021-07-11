
app: Emacs
app: emacs
-

command help:
  user.emacs_command("dired-other-window")
#   user.insert_formatted("/home/cody/hci/users/profiles/talon/user/emacs-talon/modes" + user.emacs_mode, "NOOP")
  user.insert_formatted("/home/cody/hci/users/profiles/talon/user/emacs-talon/modes", "NOOP")
  key(enter)

# my config
go:
  key(enter)

buff <user.text>$:
  key(super-b)
  user.insert_formatted(text, "NOOP")

buff:
  key(super-b)

other:
  key(ctrl-x o)

scratch:
  key(ctrl-x b * s c r a t c h * enter)

only:
  key(ctrl-x 1)

line kill:
  key(ctrl-k)

configuration go:
  user.emacs_command("find-file-other-window")
  user.insert_formatted("/home/cody/hci/users/profiles/emacs/emacs-config/vanilla.org", "NOOP")
  key(enter)

# TODO how do you make an alias for some other action already defined?
# clear: actions.user.generic_editor.clear_line()

mark:
  key(ctrl-space)


pop mark:
  key(ctrl-x ctrl-@)

error previous:
    key(alt-p)

error next:
    key(ctrl-x `)

recenter:
    key(ctrl-l)

center:
    key(ctrl-l)

window delete:
    key(ctrl-x 0)

win del:
    key(ctrl-x 0)


larger:
    key(ctrl-u 20 ctrl-x ^)

smaller:
    key(ctrl-c w s)

next:
  key(ctrl-n)

prev:
  key(ctrl-p)

winner undo:
  key(ctrl-c w u)

winner redo:
  key(ctrl-c w r)

split right:
    key(ctrl-x 3)
    key(ctrl-x o)

split below:
    key(ctrl-x 2)
    key(ctrl-x o)

# end magit

interrupt:
  key(ctrl-c ctrl-c)

directory jump to:
  key(ctrl-x d)

(dired | the red | dear at) downloads:
  key(ctrl-x d)
  user.insert_formatted("~/Downloads", "DASH_SEPARATED")
  key(enter)

talon recordings:
  key(ctrl-x d)
  user.insert_formatted("~/.talon/recordings", "DASH_SEPARATED")
  key(enter)
  key(s)
  key(alt-<)

search:
  key(ctrl-s)

search next <user.text>$:
  key(ctrl-s)
  user.insert_formatted(text, "NOOP")
  key(ctrl-s)

are search:
  key(ctrl-r)

checkout:
  key(b b)

fuff:
  key(ctrl-x ctrl-f)

fuffo:
  key(ctrl-x 4 ctrl-f)

mfuff:
  key(ctrl-c g f)

mfuffo:
  key(ctrl-c g F)

# org specific, idk nice to have period
cycle:
  key(tab)

cycle all:
  key(shift-tab)

menu:
  key(ctrl-c c i)

snippet previous:
  key(ctrl-c ctrl-v ctrl-p)

snippet next:
  key(ctrl-c ctrl-v ctrl-n)

subheading:
  key(ctrl-c o h i s)

block source:
  key(s r c tab)

block elisp:
  key(e l i s p tab)

expand:
  key(alt-/)

# add help commands like for variables functions and other callables

expand complete:
  key(super-/)

apropos:
  key(ctrl-c c a)


# TODO: replace all emacs client commands with keys for lower latency and less... issues

tab rename:
  key(ctrl-c t r)

stab:
  key(ctrl-c t l)

tab select:
  # user.system_command_nb("emacsclient --eval --no-wait \"(call-interactively 'tab-bar-select-tab-by-name)\"")
  key(ctrl-c t l)

tab new:
  key(ctrl-c t t)

tab close:
  key(ctrl-c t c)

tab previous:
  key(ctrl-c t p)

tab next:
  key(ctrl-c t n)

benito flakes:
  user.system_command_nb("systemctl suspend")

(reboot | re star | restart):
  user.system_command_nb("systemctl restart")

project: user.emacs_command("projectile-switch-project")

project file:
  key(ctrl-x p f)

project term:
  key('alt-shift-: ( p r o j e c t i l e - r u n - v t e r m ) enter')

pterm:
  key('alt-shift-: ( p r o j e c t i l e - r u n - v t e r m ) enter')

kill:
  key('ctrl-c b d')

# open qutebrowser quickly, hmm this one does some pyton specific issue? lol
# /nix/store/8asphi7hi7gk0bhx8b3hvqrhzrkg4sfv-talon-89-0.0.8.29-1072-g53955e9/lib/libQt5Core.so.5: version `Qt_5.15' not found (required by /nix/store/zqcawbsv6bd2myyr0w0541hsd40nrvjm-python3.8-PyQt5-5.15.2/lib/python3.8/site-packages/PyQt5/QtCore.so)
# quick cute:
#  user.system_command_nb("qutebrowser -R")

# for some reason this one blocks?
open:
  key(super-space)

#questions
# how let talon know the current buffer?

cutes:
    key(super-b q u t e space)

orgs:
    key(super-b . o r g space)

gits:
    key(super-b m a g i t : space)

block copy:
  key(alt-h alt-w)
  key(ctrl-x)
  key(ctrl-x)
  key(ctrl-g)

# to do block copy and block delete

(he shall | eshell):
  key(alt-x e s h e l l enter)

block select:
    key(alt-h)

block comment:
    key(alt-h)
    key(alt-;)
    key(ctrl-n)

# to do block select after
# like a normal block select accept it only selects after point

consult find:
    key(ctrl-c c f)

consult find <user.text>$:
  key(ctrl-c c f)
  user.insert_formatted(text, "NOOP")
  key(ctrl-enter)

(grep | grip): key(ctrl-c c s)

(grep | grip) symbol: key(ctrl-c c S)

(grep | grip) <user.text>$:
  key(ctrl-c c s)
  user.insert_formatted(text, "NOOP")
  key(ctrl-enter)



# this one won't work in qutebrowser until the website is added to title :/
# github:
#     key(super-b g i t h u b space)

# work specific
# clubhouse
clubs:
    key('super-b c l u b h o u s e space ')

talons:
    key(super-b t a l o n space )

# other config

fullscreen: user.emacs_command("toggle-frame-fullscreen")

snippet new: user.emacs_command("yas-new-snippet")
snippet visit: user.emacs_command("yas-visit-snippet")
snippet tryout: user.emacs_command("yas-tryout-snippet")
snippet search: user.emacs_command("yas-insert-snippet")
snippet <user.text>$:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted(text, "NOOP")
  key(enter)

# run python: user.emacs_command("run-python")
# python load file: key(ctrl-c ctrl-l enter)

replace$:
    user.emacs_command("replace-regexp")

replace <user.text> with <user.text>$:
    user.emacs_command("replace-regexp")
    user.insert_formatted(text_1, "NOOP")
    key(enter)
    user.insert_formatted(text_2, "NOOP")

# magit (also see magit-*.talon), most of these need to be global across emacs
git status:
  key(ctrl-c g s)

git (death master | compare master):
  user.emacs_command("magit-diff-range")
  user.insert_formatted("origin/master","NOOP")
  key(enter)

git death:
  user.emacs_command("magit-diff-range")
  key(tab)

git commit options:
  user.emacs_command("magit-commit")

git commit:
  user.emacs_command("magit-commit")
  key(c)

git push options:
  user.emacs_command("magit-push")

git push:
  user.emacs_command("magit-push")
  key(p)

git stage file:
  user.emacs_command("magit-stage-file")

git stage:
  user.emacs_command("magit-stage")

magit:
  key(ctrl-c g s)

magit log:
  user.emacs_command("magit-log-buffer-file")

# ----- GENERAL ----- #
quit: key(ctrl-g)
( control I'm | control is ): key(ctrl-g)
suplex: key(ctrl-x)
exchange: key(ctrl-x ctrl-x)
# "execute" previously named "command", but this caused lots of problems
execute: key(alt-x)
execute <user.text>$:
  key(alt-x)
  # user.insert_formatted(text, "DASH_SEPARATED")
  # since I'm using consult there's not much reason to use exact matching
  user.insert_formatted(text, "NOOP")

evaluate: key(alt-:)
prefix: key(ctrl-u)
prefix <number_small>: user.emacs_prefix(number_small)

reflow: key(alt-q)
toggle read only: key(ctrl-x ctrl-q)
lines only: key(ctrl-c c l)

lines with <user.text>$:
  key(ctrl-c c l)
  user.insert_formatted(text + " ", "NOOP")

lines symbol: key(ctrl-c c L)
directory jump: key(ctrl-x ctrl-j)
the red: key(ctrl-x d)
other: key(ctrl-x o)
insert unicode: key(ctrl-x 8 enter)

woman: user.emacs_command("woman")
customize variable: user.emacs_command("customize-variable")
customize group: user.emacs_command("customize-group")
customize face: user.emacs_command("customize-face")
[toggle] line numbers: user.emacs_command("d-nu")
visual line mode: user.emacs_command("visu-l-m")
highlight line mode: user.emacs_command("hl-l-m")
auto fill mode: user.emacs_command("auto-f")
describe (char|character): user.emacs_command("desc-char")

kill ring:
  key(ctrl-c c y)

kill ring <user.text>$:
  key(ctrl-c c y)
  user.insert_formatted(text, "NOOP")
  key(ctrl-enter)

(next three build | next rebuilt | nicks rebuild):
    user.emacs_command("rebuild-nix-configuration")

[(nix | nick)] (update and rebuild | nick update):
  user.emacs_command("update-and-rebuild-nix-configuration")

# emacs record: key("ctrl-x (")
# emacs stop: key("ctrl-x )")
# emacs play: key(ctrl-x e)

# recenter: key(ctrl-u ctrl-l)
# center [<number_small> from] top:
#   user.emacs_prefix(number_small or 0)
#   key(ctrl-l)
# center [<number_small> from] bottom:
#   number = number_small or 0
#   user.emacs_prefix(-1-number)
#   key(ctrl-l)

# # ----- HELP ----- #
# apropos:
#   key(ctrl-h)
#   key(a)
describe (fun|function):
  key(ctrl-h)
  key(f)
describe key:
  key(ctrl-h)
  key(k)
describe key briefly:
  key(ctrl-h)
  key(c)
describe symbol:
  key(ctrl-h)
  key(o)
describe variable:
  key(ctrl-h)
  key(v)
describe mode:
  key(ctrl-h)
  key(m)

# describe (fun|function) <user.text>$:
#   key(ctrl-h)
#   key(f)
#   user.insert_formatted(text, "DASH_SEPARATED")
#   key(enter)
# describe symbol <user.text>$:
#   key(ctrl-h)
#   key(o)
#   user.insert_formatted(text, "DASH_SEPARATED")
# describe variable <user.text>$:
#   key(ctrl-h v)
#   user.insert_formatted(text, "DASH_SEPARATED")

# # ----- BUFFERS & WINDOWS ----- #
# switch:
#   key(ctrl-x b)
# other [window] switch:
#   key(ctrl-x 4 b)
# [other [window]] display:
#   key(ctrl-x 4 ctrl-o)
# switch back: key(ctrl-x b enter)
# other [window] switch back: key(ctrl-x 4 b enter)
# [other [window]] display back: key(ctrl-x 4 ctrl-o enter)

[split|tab] rebalance: key(ctrl-x +)
# tab shrink: key(ctrl-x -)
# tab grow: key(ctrl-x ^)
# tab grow <number_small>:
#   user.emacs_prefix(number_small)
#   key(ctrl-x ^)
# tab shrink <number_small>:
#   amount = number_small or 1
#   user.emacs_prefix(0 - amount)
#   key(ctrl-x ^)

# file open: key(ctrl-x ctrl-f)
# file rename: user.emacs_command("rename-file")
# other [window] file open: key(ctrl-x 4 ctrl-f)
# (file | buffer) close: key(ctrl-c k)
buffer kill: key(ctrl-x k enter)
buffer kill select: key(ctrl-x k)
buffer eva: user.emacs_command("eval-buffer")
# buffer bury: user.emacs_command("bur")
# buffer revert | revert buffer: user.emacs_command("rev-buf")
# buffer finish: key(ctrl-x ctrl-s ctrl-x #)
# buffer list: key(ctrl-x ctrl-b)
buffer next: key(ctrl-x right)
buffer last: key(ctrl-x left)

# diff (buffer | [buffer] with file):
#   user.emacs_command("d-b-w")
#   key(enter)
# kill buffers matching file name: user.emacs_command("k-b-m-f")
# other [window] quit: key(ctrl-c q)

# # ----- MOTION AND EDITING ----- #
# cut line: key(home alt-1 ctrl-k)
# auto indent: key(alt-ctrl-\)

# mark: key(ctrl-space)
# go back: key(ctrl-u ctrl-space)
# global [go] back: key(ctrl-x ctrl-@)

# page mark: key(ctrl-x ctrl-p)
# next page | page next: key(ctrl-x ])
# last page | page last: key(ctrl-x [)
# next error | error next: key(alt-g n)
# last error | error last: key(alt-g p)

# sentence right: key(alt-e)
# sentence left: key(alt-a)
# sentence kill: key(alt-k)
# term left: key(alt-ctrl-b)
# term right: key(alt-ctrl-f)
# term up: key(esc ctrl-up)
# term down: key(esc ctrl-down)
# term kill: key(esc ctrl-k)
# term mark: key(esc ctrl-space)
# term copy: key(escape ctrl-space alt-w)
# graph kill: user.emacs_command("kill-par")
# graph up: key(alt-p)
# graph down: key(alt-n)
# graph mark: key(alt-h)
# graph copy: key(alt-h alt-w)
# graph cut: key(alt-h ctrl-w)

# # could call these "pull", as they pull the thing behind point forward
# transpose [word|words]: key(alt-t)
# transpose (term|terms): key(ctrl-alt-t)
# transpose (char|chars): key(ctrl-t)
# transpose (line|lines): key(ctrl-x ctrl-t)
# transpose (sentence|sentences): user.emacs_command("tr-sen")
# transpose (graph|graphs|paragraphs): user.emacs_command("tr-par")

# register (copy|save): key("ctrl-x r s")
# register (paste|insert): key("ctrl-x r i")
# register jump: key(ctrl-x r j)

# # ----- smerge minor mode -----
# merge next: key("ctrl-c ^ n")
# merge last: key("ctrl-c ^ p")
# merge keep upper: key("ctrl-c ^ u")
# merge keep lower: key("ctrl-c ^ l")
# merge keep this: key("ctrl-c ^ enter")
# merge refine: key("ctrl-c ^ R")
# merge split: key("ctrl-c ^ r")

# # ----- SEARCH & REPLACE ----- #
# action(edit.find): key(ctrl-s)
# action(user.find_reverse): key(ctrl-r)
# action(edit.find_next): key(ctrl-s)
# action(edit.find_previous): key(ctrl-r)

# search regex: key(alt-ctrl-s)
# search regex back: key(alt-ctrl-r)
# replace: key(alt-%)
# replace regex: key(alt-ctrl-%)
# search buffer:
#   key(ctrl-home)
#   edit.find()
# search buffer regex: key(ctrl-home alt-ctrl-s)
# replace buffer: key(ctrl-home alt-%)
# replace regex buffer: key(ctrl-home ctrl-alt-%)
# # TODO: this only works for search not for replace! :(
# search toggle (regex | regular | pattern): key(alt-r)
# search toggle word: key(alt-s w)
# search edit: key(alt-e)

comment: user.emacs_command("comment-dwim")

# # ----- TALON ACTIONS ----- #
# action(code.toggle_comment): user.emacs_command("comment-dwim")
action(edit.line_swap_down): key(down ctrl-x ctrl-t up)
action(edit.line_swap_up): key(ctrl-x ctrl-t up:2)
action(edit.line_clone): key(ctrl-a ctrl-k ctrl-y enter ctrl-y home)

action(edit.word_left): key(alt-b)
action(edit.word_right): key(alt-f)
action(edit.extend_word_left): key(shift-alt-b)
action(edit.extend_word_right): key(shift-alt-f)
action(edit.select_all): key(ctrl-x h)
# # indent_{more,less} work on the current region, but knausj expects them to
# # operate on the current line if there is no selection. no easy way to do this.
# action(edit.indent_more):
#   user.emacs_prefix(4)
#   key(ctrl-x tab)
# action(edit.indent_less):
#   user.emacs_prefix(-4)
#   key(ctrl-x tab)
# action(edit.zoom_in): key(ctrl-x ctrl-+)
# action(edit.zoom_out): key(ctrl-x ctrl--)
# action(edit.zoom_reset): key(ctrl-x ctrl-0)

save: key(ctrl-x ctrl-s)
save all: key(ctrl-x s)
copy: key(alt-w)
cut: key(ctrl-w)
paste: key(ctrl-y)
undo: key(ctrl-_)

# action(app.tab_next): key("ctrl-x o")
# action(app.tab_previous):
#   user.emacs_prefix(-1)
#   key("ctrl-x o")
# action(app.tab_close): key("ctrl-x 0")
# action(app.tab_open): key("ctrl-x 2")
# action(app.window_open): key(ctrl-x 5 2)

# action(user.split_window): key(ctrl-x 2)
# action(user.split_window_vertically): key(ctrl-x 2)
# action(user.split_window_horizontally): key(ctrl-x 3)
# action(user.split_next): key("ctrl-x o")
# action(user.split_last):
#   user.emacs_prefix(-1)
#   key("ctrl-x o")
# split close: key(ctrl-x 0)
# action(user.split_clear): key(ctrl-x 1)
# action(user.split_clear_all): key(ctrl-x 1)

# this matches too many things like second
# (that you | set cut |secure | second ): user.insert_formatted("setq", "NOOP")

(fine file at point | find file at point):
    user.emacs_command("find-file-at-point")

stack exchange search:
    user.emacs_command("sx-search")

stack overflow:
    user.emacs_command("sx-search")
    user.insert_formatted("stackoverflow", "NOOP")
    key(enter)

stack overflow list:
    user.emacs_command("sx-tab-hot")
    user.insert_formatted("stackoverflow", "NOOP")
    key(enter)

stack exchange search <user.text>$:
    user.emacs_command("sx-search")
    user.insert_formatted(text, "NOOP")
    key(enter)

stack exchange emacs list:
    user.emacs_command("sx-tab-hot")
    user.insert_formatted("emacs", "NOOP")
    key(enter)

stack exchange search:
    user.emacs_command("sx-search")

stack exchange unix search:
    user.emacs_command("sx-search")
    user.insert_formatted("unix", "NOOP")
    key(enter)

stack exchange unix:
    user.emacs_command("sx-tab-hot")
    user.insert_formatted("unix", "NOOP")
    key(enter)

(paragraph | pera) forward:
  key(alt-})

(paragraph | pera) (backward | back):
  key(alt-{)

defun:
  user.emacs_command("yas-insert-snippet")
  user.insert_formatted("elisp defun", "NOOP")
  key(enter)

(gates cid | ghee the id | ugh cid | ich cid ) restart:
  user.emacs_command("ghcid")
  key(enter)

(gates cid | ghee the id | ugh cid | ich cid ) [switch]:
  key(ctrl-x b * g h c i d * enter)

link store: user.emacs_command("org-store-link")
link insert: user.emacs_command("org-insert-link")
link insert last:
  user.emacs_command("org-insert-link")
  key(enter)

get hub notifications:
  user.emacs_command("gh-notify")

work space music:
  user.emacs_command("workspace-music")

work space work:
  user.emacs_command("workspace-work")

work space today:
  user.emacs_command("workspace-today")

docker:
  user.emacs_command("docker")

rome find file:
  user.emacs_command("org-roam-find-file")

rome today:
  user.emacs_command("org-roam-dailies-find-today")

rome yesterday:
  user.emacs_command("org-roam-dailies-find-yesterday")

rome date:
  user.emacs_command("org-roam-dailies-find-date")

completion at point:
  user.emacs_command("completion-at-point")

I three help:
  user.emacs_command("find-file")
  user.insert_formatted("/home/cody/.talon/user/knausj_talon/apps/i3wm/i3wm.talon", "NOOP")
  key(enter)

my projects:
  user.emacs_command("find-file-other-window")
  user.insert_formatted("~/org-roam/20210530152357-my_small_batch_projects.org", "NOOP")
  key(enter)
  key(ctrl-c ctrl-n)
  key(ctrl-e)

# TODO move this to talon specific mode when I set it up
to do:   user.insert_formatted(" TODO ", "NOOP")

# TODO figure out how to do or block specific things from within or mode if possible
# this is just to start an s-expression
essex:
  user.insert_formatted("()", "NOOP")
  key(ctrl-b)

macro start:
  key(f3)

macro end:
  key(f4)

macro execute:
  key(ctrl-x e)

#fast food spiral:
# https://ordering.incentivio.com/client/ed0832d3-51b9-491e-bbe1-9b34d3106b7c/store/#