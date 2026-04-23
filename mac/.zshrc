# See `man zshparam`
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000

# See `ZLE BUILTINS` under `man zshzle`
bindkey -v

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

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

if [ -x "$(command -v starship)" ]; then
    eval "$(starship init zsh)"
fi

eval "$(fnm env --use-on-cd --shell zsh)"

# pnpm
export PNPM_HOME="/Users/aniket/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
