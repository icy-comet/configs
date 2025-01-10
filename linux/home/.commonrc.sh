running_shell=$1
# make less more friendly for non-text input files
# see -> https://wiki.archlinux.org/title/Color_output_in_console#lesspipe
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# ANSI color codes with `termcap` for colored man-pages
# `termcap` is, however, deprecated.
# `less` continues to respect these directives
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

if [ -f ~/.aliases.sh ]; then
    . ~/.aliases.sh
fi

if [ -f ~/.wslrc.sh ]; then
    . ~/.wslrc.sh
fi

if [ -x "$(command -v starship)" ]; then
    eval "$(starship init $running_shell)"
fi