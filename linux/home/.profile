# only the exports that should be set once per login shell
# or should require for a full restart on change should go here
# the file is sourced only once

export EDITOR="nvim"

# doesn't work with fish
[[ ":$PATH:" =~ ":$HOME/bin:" ]] || export PATH="$PATH:$HOME/bin"

# Deta Binary Path
export PATH="$PATH:$HOME/.deta/bin"

# Rust bin
export PATH="$HOME/.cargo/bin:$PATH"

# Doom CLI
export PATH="$PATH:$HOME/.config/emacs/bin"

# Eww bin
export PATH="$PATH:$HOME/Git/eww/target/release"

#Golang bin
export PATH="$PATH:$HOME/go/bin"

# pipx bin
export PATH="$PATH:$HOME/.local/bin/"

export MPD_HOST="$HOME/.config/mpd/socket"

export BEMENU_OPTS="-i -l 20 --fb '#1e1e2e' --ff '#94e2d5' --nb '#1e1e2e' --nf '#f5e0dc' --tb '#1e1e2e' --hb '#1e1e2e' --tf '#cba6f7' --hf '#89b4fa' --nf '#f5e0dc' --af '#f5e0dc' --ab '#1e1e2e' -H 32 -p 'Run:'"

export QT_STYLE_OVERRIDE="kvantum"
