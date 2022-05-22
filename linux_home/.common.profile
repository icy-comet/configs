# only the exports that should be set once per login shell
# or should require for a full restart on change should go here
# the file is sourced only once

export EDITOR="nvim"

# doesn't work with fish
[[ ":$PATH:" =~ ":$HOME/bin:" ]] || export PATH="$HOME/bin:$PATH"

# Needed if NPM's default global installation dir is changed to bypass permission restrictions
export PATH="$HOME/.npm-global/bin:$PATH"

# Deta Binary Path
export PATH="$HOME/.deta/bin:$PATH"

# Rust packages
export PATH="$HOME/.cargo/bin:$PATH"

export MPD_HOST=$HOME/.config/mpd/socket
