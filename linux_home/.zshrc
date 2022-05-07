# See `man zshparam`
HISTFILE=~
HISTSIZE=1000
SAVEHIST=1000

# See `ZLE BUILTINS` under `man zshzle`
bindkey -v

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# See `THE ZSH/ZUTIL MODULE` under `man zshmodules`
zstyle :compinstall filename '/home/aniket/.zshrc'

# See `Use of compinit` under `man zshcompsys`
autoload -Uz compinit
compinit

# Documented at https://zsh.sourceforge.io/Doc/Release/Options.html
# as well as `man zshoptions`
setopt AUTO_PUSHD
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt NO_LIST_BEEP
setopt COMPLETE_ALIASES


if [ -f ~/common_rc.sh ]; then
    . ~/common_rc.sh
fi

if [ -f ~/aliases.sh ]; then
    . ~/aliases.sh
fi
