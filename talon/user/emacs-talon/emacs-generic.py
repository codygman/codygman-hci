from talon import Context, actions, ui, Module, app, clip, scope

mod = Module()
ctx = Context()

@mod.scope
def scope():
    title = ui.active_window().title
    title_pieces = title.split('[')
    res = {}
    #print('hi o')
    #print(title_pieces)
    if len(title_pieces) == 2:
        mode = title_pieces[1].strip()[:-1]
        print(mode)
        res = {"emacs_mode": mode}
    #print(res)
    return res

ui.register('win_title', scope.update)

@mod.action_class
class Actions:
    def emacs_command(name: str): "Runs an emacs command."
    def emacs_prefix(n: int): "Inputs a prefix argument."
    def emacs_help(): "Runs the emacs help command prefix."

@ctx.action_class("self")
class emacs_actions:
    def emacs_command(name):
        actions.key("alt-x")
        actions.insert(name)
        actions.key("enter")

    # Applying meta to each key is fewer keypresses overall and works in
    # ansi-term mode.
    def emacs_prefix(n): actions.key(" ".join(f"alt-{i}" for i in str(n)))
    #def emacs_prefix(n): actions.key(f'ctrl-u {" ".join(str(n))}')

    # NB. f1 works in ansi-term mode; C-h doesn't.
    def emacs_help(): actions.key("f1")

    # def clobber_selection_if_exists():
    #     actions.key("ctrl-alt-shift-backspace") # keybinding added for talon

    def dictation_peek_left(clobber=False):
        # NB. need to clobber because while we restore the mark position, we
        # don't restore transient mark mode. TODO: restore transient mark mode?
        if clobber:
            actions.user.clobber_selection_if_exists()
        actions.key("ctrl-@")
        actions.edit.word_left()
        text = actions.edit.selected_text()
        actions.key("ctrl-u ctrl-@")
        return text

    def dictation_peek_right():
        actions.edit.extend_right()
        text = actions.edit.selected_text()
        actions.key("ctrl-u ctrl-@")
        return text

    def select_range(line_start, line_end):
        actions.edit.jump_line(line_start)
        actions.key("ctrl-@ ctrl-@")
        actions.edit.jump_line(line_end)
        actions.edit.line_end()
        actions.edit.right()


@ctx.action_class('edit')
class edit_actions:
    # # this relies on a custom binding for M-W that copies the selection to the
    # # clipboard without unselecting it or cluttering the kill ring
    # def selected_text():
    #     with clip.capture() as s:
    #         # TODO: if transient mark is not on, perhaps return ""?
    #         actions.key("alt-shift-w")
    #     try: return s.get()
    #     except clip.NoChange: return ""

    def jump_line(n):
        actions.user.emacs_prefix(n)
        actions.key("alt-g g")

@ctx.action_class('win')
class win_actions:
    def filename():
        title = actions.win.title()
        # currently in emacs the window title includes the file name
        return title
