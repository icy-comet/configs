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

# Doom CLI
export PATH="$PATH:$HOME/.config/emacs/bin"

# Eww bin
export PATH="$PATH:$HOME/Git/eww/target/release"

#Golang bin
export PATH="$PATH:$HOME/go/bin"

# pipx bin
export PATH="$PATH:$HOME/.local/bin/"

export MPD_HOST="$HOME/.config/mpd/socket"

export BEMENU_OPTS="-H 32 --hp 10 --fn 'MonoLisa Nerd Font 9' --fb '#1e1e2e' --ff '#cdd6f4' --nb '#1e1e2e' --nf '#cdd6f4' --tb '#1e1e2e' --hb '#f2cdcd' --tf '#f38ba8' --hf '#1e1e2e' --nf '#cdd6f4' --af '#cdd6f4' --ab '#1e1e2e'"

export QT_STYLE_OVERRIDE="kvantum"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
