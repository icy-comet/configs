# man 1 bash:
# > A  colon-separated  list of values controlling how commands are saved on the history list.
# > A value of ignoredups causes lines matching the previous history entry to not be saved.
HISTCONTROL=ignoredups

HISTSIZE=1000
HISTFILESIZE=2000


# do not overwrite history file
# see -> https://unix.stackexchange.com/q/6501/464044
# documented under `FILES` in `man bash`
shopt -s histappend
# enabled by default according to the man page
shopt -s checkwinsize
# enable minor typo auto-correction  on `cd`
shopt -s cdspell

# enable bash completion in interactive shells
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

if [ -f ~/.commonrc.sh ]; then
    . ~/.commonrc.sh "bash"
fi