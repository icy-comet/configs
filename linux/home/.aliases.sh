alias py="python"
alias cls="clear"

# makes getting octal file/folder permissions easy
# just type in `catmod <path-to-folder/file>`
alias catmod="stat -c '%A %a %U %G %n'"

# fix permissions for all files & folders copied from Windows/NTFS drives
# takes the directory to be fixed after this
# e.g. `> fixperms /home/aniket/Projects`
alias fixperms="chmod -R u=rw,og=r,+X"

alias grep="grep --color=auto"

alias reload-hyprpaper="hyprctl dispatch exec ~/.config/utils/reload-hyprpaper.sh"

if [ -x "$(command -v exa)" ]; then
    alias ls="eza --group-directories-first"
    alias ll="eza -la --group-directories-first"
fi