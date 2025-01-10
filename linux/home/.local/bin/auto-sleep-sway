swayidle -w timeout 300 'swaylock' \
            timeout 300 'swaymsg output * power off' \
            resume 'swaymsg output * power on' \
            timeout 600 'systemctl suspend' \
            before-sleep 'swaylock' &