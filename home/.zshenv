# the file lives in the home dir

# For ease of updating manually managed binaries like `hugo`
export PATH="$HOME/bin:$PATH"

# Needed if NPM's default global installation dir is changed
export PATH="$HOME/.npm-global/bin:$PATH"

# To make OBS use Pipewire screen sharing on Arch
export QT_QPA_PLATFORM=wayland
