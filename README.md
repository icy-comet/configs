<pre align="center">
█▀▀ █▀█ █▄░█ █▀▀ █ █▀▀ █▀
█▄▄ █▄█ █░▀█ █▀░ █ █▄█ ▄█
</pre>

These are some of the configurations I use on my machines regularly. My configs continuously evolve according to my needs and the repo may lag behind on reflecting my choices/changes.

### Repo Structure
```bash
# lsd/exa
exa -a --tree -I .git
```

```tree
.
├── .editorconfig
├── .gitignore
├── LICENSE
├── linux
│  ├── etc
│  │  └── X11
│  │     └── xorg.conf.d
│  │        ├── 30-touchpad.conf
│  │        ├── 50-vmconfig.conf
│  │        └── README.md
│  ├── home
│  │  ├── .aliases.sh
│  │  ├── .arch.profile
│  │  ├── .bash_profile
│  │  ├── .bashrc
│  │  ├── .commonrc.sh
│  │  ├── .config
│  │  │  ├── alacritty
│  │  │  │  └── alacritty.yml
│  │  │  ├── cava
│  │  │  │  └── config
│  │  │  ├── code-flags.conf
│  │  │  ├── doom
│  │  │  │  ├── config.el
│  │  │  │  ├── custom.el
│  │  │  │  ├── init.el
│  │  │  │  └── packages.el
│  │  │  ├── dunst
│  │  │  │  └── dunstrc
│  │  │  ├── electron-flags.conf
│  │  │  ├── eww
│  │  │  │  ├── eww.scss
│  │  │  │  └── eww.yuck
│  │  │  ├── hypr
│  │  │  │  ├── hyprland.conf
│  │  │  │  ├── hyprpaper.conf
│  │  │  │  ├── mocha.conf
│  │  │  │  ├── progressBar.sh
│  │  │  │  └── README.md
│  │  │  ├── kitty
│  │  │  │  ├── catppuccin-mocha.conf
│  │  │  │  ├── kitty.conf
│  │  │  │  └── README.md
│  │  │  ├── mpd
│  │  │  │  └── mpd.conf
│  │  │  ├── ncmpcpp
│  │  │  │  └── config
│  │  │  ├── networkmanager-dmenu
│  │  │  │  └── config.ini
│  │  │  ├── nvim
│  │  │  │  ├── lua
│  │  │  │  │  └── custom
│  │  │  │  │     ├── chadrc.lua
│  │  │  │  │     └── init.lua
│  │  │  │  └── README.md
│  │  │  ├── picom
│  │  │  │  └── picom.conf
│  │  │  ├── qtile
│  │  │  │  ├── autostart.sh
│  │  │  │  ├── config.py
│  │  │  │  ├── README.md
│  │  │  │  └── shutdown.sh
│  │  │  ├── sway
│  │  │  │  ├── catppuccin-mocha
│  │  │  │  ├── config
│  │  │  │  ├── import-gsettings.sh
│  │  │  │  ├── README.md
│  │  │  │  └── shutdown.sh
│  │  │  └── waybar
│  │  │     ├── catppuccin-mocha.css
│  │  │     ├── config.jsonc
│  │  │     └── style.css
│  │  ├── .inputrc
│  │  ├── .npmrc
│  │  ├── .profile
│  │  ├── .ssh
│  │  │  └── config
│  │  ├── .wslrc.sh
│  │  ├── .Xresources
│  │  ├── .zprofile
│  │  ├── .zshplugins
│  │  │  └── zsh-history-substring-search
│  │  │     ├── README.md
│  │  │     └── zsh-history-substring-search.zsh
│  │  ├── .zshrc
│  │  └── README.md
│  └── README.md
├── other
│  ├── .gitconfig
│  ├── lsd
│  │  ├── config.yaml
│  │  ├── custom-theme.yaml
│  │  └── readme.md
│  ├── Microsoft.PowerShell_profile.ps1
│  ├── Prettier
│  │  └── .prettierrc.yml
│  ├── Scoop
│  │  ├── pkglist.txt
│  │  └── README.md
│  ├── VSCode
│  │  ├── diff.ignore
│  │  ├── manage_extensions.py
│  │  ├── README.md
│  │  └── VSCode_Settings.jsonc
│  └── Windows Terminal
│     ├── Catppuccin Mocha.json
│     ├── Catppuccin Mocha Terminal Theme.json
│     ├── README.md
│     └── settings.json
└── README.md
```