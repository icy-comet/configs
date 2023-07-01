import subprocess
from pathlib import Path
from libqtile.lazy import lazy
from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen

# mod4 is the super key/windows key/logo key
MOD_KEY = "mod4"
TERMINAL = "kitty"
BROWSER = "firefox"
HOME_PATH = str(Path.home())


class MouseClick:
    LEFT = "Button1"
    RIGHT = "Button3"
    MIDDLE = "Button2"

class CatppuccinColors:
    BASE = "#24273a"
    RED = "#ed8796"
    BLUE = "#8aadf4"

keys = [
    # Window Control
    Key([MOD_KEY], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([MOD_KEY], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([MOD_KEY], "j", lazy.layout.down(), desc="Move focus down"),
    Key([MOD_KEY], "k", lazy.layout.up(), desc="Move focus up"),
    Key(
        [MOD_KEY],
        "space",
        lazy.layout.next(),
        desc="Move window focus to other window",
    ),
    Key([MOD_KEY, "shift"], "h", lazy.layout.swap_left()),
    Key([MOD_KEY, "shift"], "l", lazy.layout.swap_right()),
    Key([MOD_KEY, "shift"], "j", lazy.layout.shuffle_down()),
    Key([MOD_KEY, "shift"], "k", lazy.layout.shuffle_up()),
    Key([MOD_KEY, "shift"], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([MOD_KEY], "i", lazy.layout.grow()),
    Key([MOD_KEY], "m", lazy.layout.shrink()),
    Key([MOD_KEY], "n", lazy.layout.normalize()),
    Key([MOD_KEY], "o", lazy.layout.maximize()),
    Key([MOD_KEY], "Return", lazy.spawn(TERMINAL), desc="Launch terminal"),
    Key(
        [MOD_KEY, "shift"],
        "Tab",
        lazy.next_layout(),
        desc="Toggle between active layouts",
    ),
    Key(
        [MOD_KEY, "control"],
        "r",
        lazy.reload_config(),
        desc="Reload the config",
    ),
    Key([MOD_KEY, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key(
        [MOD_KEY],
        "r",
        lazy.spawncmd(),
        desc="Spawn a command using a prompt widget",
    ),
]

groups = [Group(i) for i in "󰈹󰗃缾"]

# attach key shortcuts to each group
for i, grp in enumerate(groups):
    i = str(i+1)
    keys.extend(
        [
            # MOD_KEY + index of group = switch to that group
            Key(
                [MOD_KEY],
                i,
                lazy.group[grp.name].toscreen(),
                desc="Switch to group {}".format(i),
            ),
            # MOD_KEY + shift + index of group = move focused window to that group
            Key(
                [MOD_KEY, "shift"],
                i,
                lazy.window.togroup(grp.name),
                desc="move focused window to group {}".format(i),
            ),
        ]
    )

layouts = [
    layout.MonadTall(border_focus=CatppuccinColors.RED, margin=10),
]

widget_defaults = dict(
    font="JetBrainsMono NF",
    fontsize=17,
    padding=5,
)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(this_current_screen_border=CatppuccinColors.BLUE),
                widget.Prompt(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Spacer(length=bar.STRETCH),
                widget.WindowName(),
                widget.Spacer(length=bar.STRETCH),
                widget.Systray(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.CurrentLayoutIcon(scale=0.6),
            ],
            35,
            margin=[6, 6, 6, 6],
            background=CatppuccinColors.BASE,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag(
        [MOD_KEY],
        MouseClick.LEFT,
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [MOD_KEY],
        MouseClick.RIGHT,
        lazy.window.set_size_floating(),
        start=lazy.window.get_size(),
    ),
    # win + middle-click
    Click([MOD_KEY], MouseClick.MIDDLE, lazy.window.bring_to_front()),
    Click([MOD_KEY, "shift"], MouseClick.MIDDLE, lazy.window.disable_floating()),
]

floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="ssh-askpass"),  # ssh-askpass
    ]
)


@hook.subscribe.startup_once
def start_once():
    subprocess.call([f"{HOME_PATH}/.config/qtile/autostart.sh"])


@hook.subscribe.shutdown
def shutdown():
    subprocess.call(f"{HOME_PATH}/.config/qtile/shutdown.sh")


# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# Controls whether or not focus follows the mouse around
# as it moves across windows in a layout.
follow_mouse_focus = True

# When clicked, should the window be brought to the front or not.
# If this is set to "floating_only", only floating windows will get affected.
bring_front_click = False

# If a window requests to be fullscreen, it is automatically fullscreened.
# Set this to false if you only want windows to be fullscreen if you ask them to be.
auto_fullscreen = True

# Behavior of the _NET_ACTIVATE_WINDOW message sent by applications
# urgent: urgent flag is set for the window
# focus: automatically focus the window
# smart: automatically focus if the window is in the current group
# never: never automatically focus any window that requests it
focus_on_window_activation = "smart"

# Controls whether or not to automatically reconfigure screens
# when there are changes in randr output configuration.
reconfigure_screens = True

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
