#!/bin/sh
# swayidle -w \
#          timeout 300 'swaylock -f -c 000000' \
#          timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
#          before-sleep 'swaylock -f -c 000000'

# WOBSOCK=$XDG_RUNTIME_DIR/wob.sock
# rm -f $WOBSOCK && mkfifo $WOBSOCK && tail -f $WOBSOCK | wob --border-color "#c9cbffff" --background-color "#1e1e2eff" --bar-color "#c9cbffff

# batsignal
# mpd
# lxpolkit
systemctl --user start dunst
