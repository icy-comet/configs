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

# For WSL
# eval executes lines returned by keychain to ensure sshd picks up this ssh-agent instance
# eval "$(keychain -q --eval --noask --agents ssh id_ed25519)"

eval "$(starship init zsh)"

if [ -f ~/.aliases.sh ]; then
    . ~/.aliases.sh
fi
