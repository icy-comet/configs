# the file lives in `ZSH_CUSTOM` dir defined in a ENV variable (in `.zshrc`) before loading `oh-my-zsh`; default `~/.oh-my-zsh/custom/`

alias py="python"
alias cls="clear"

# makes getting octal file/folder permissions easy
alias catmod="stat -c '%A %a %n'"

# fix permissions for all files & folders copied from Windows/NTFS drives
# takes the directory to be fixed after this
# e.g. `> fixperms /home/aniket/Projects`
alias fixperms="chmod -R u=rw,og=r,+X"