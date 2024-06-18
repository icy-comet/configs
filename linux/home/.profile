# only the exports that should be set once per login shell
# or should require for a full restart on change should go here
# the file is sourced only once

export EDITOR="nvim"

# doesn't work with fish
[[ ":$PATH:" =~ ":$HOME/bin:" ]] || export PATH="$PATH:$HOME/bin"

# Deta Binary Path
export PATH="$PATH:$HOME/.deta/bin"

# source rustup env file
if [ -r "$HOME/.cargo/env" ]; then . "$HOME/.cargo/env"; fi

# Golang bin
export PATH="$PATH:$HOME/go/bin"

# pipx bin
export PATH="$PATH:$HOME/.local/bin/"

# volta setup
export VOLTA_HOME="$HOME/.volta"
export PATH="$PATH:$VOLTA_HOME/bin"

export MPD_HOST="$HOME/.config/mpd/socket"

export BEMENU_OPTS="--fn 'MonoLisa Nerd Font 9' --fb "#1e1e2e" --ff "#cdd6f4" --nb "#1e1e2e" --nf "#cdd6f4" --tb "#1e1e2e" --hb "#89dceb" --hf "#1e1e2e" --tf "#f38ba8" --af "#cdd6f4" --ab "#1e1e2e" --bdr '#89dceb' --cw 10 -l 5 -c -p 'Run:' --no-overlap -W 0.5 --border 1 -H 30 --hp 10"

# export QT_STYLE_OVERRIDE="kvantum"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# grimshot default dir
export XDG_SCREENSHOTS_DIR="$HOME/SCREENSHOTS"