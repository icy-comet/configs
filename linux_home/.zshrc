# Lines configured by zsh-newuser-install and compinstall
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

zstyle :compinstall filename '/home/aniket/.zshrc'
autoload -Uz compinit
compinit


alias py="python"
# alias py="python3"
alias cls="clear"

# makes getting octal file/folder permissions easy
# just type in `catmod <path-to-folder/file>`
alias catmod="stat -c '%A %a %U %G %n'"

# fix permissions for all files & folders copied from Windows/NTFS drives
# takes the directory to be fixed after this
# e.g. `> fixperms /home/aniket/Projects`
alias fixperms="chmod -R u=rw,og=r,+X"

# For WSL
# eval executes lines returned by keychain to ensure sshd picks up this ssh-agent instance
# eval "$(keychain -q --eval --noask --agents ssh id_ed25519)"
