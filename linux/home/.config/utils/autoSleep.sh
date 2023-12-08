swayidle -w timeout 300 'swaylock -f -c 24273a' \
            timeout 300 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 600 'systemctl suspend' \
            before-sleep 'swaylock -f -c 24273a' &