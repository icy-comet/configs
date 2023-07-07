#!/bin/bash

entity="$1"
verb="$2"

function updateWindow() {
    sleep 1
    barPresses=$(eww get barPresses)
    barPresses=$((barPresses - 1))
    eww update barPresses="$barPresses"
    if [ $barPresses -lt 1 ]; then
        eww close overlaybar
    fi
}

if [ $entity == "volume" ]; then
    if [ $verb == "up" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        barIcon="󰝝"
    elif [ $verb == "down" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        barIcon="󰝞"
    elif [ $verb == "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        barIcon="󰝟"
        if [ "$(pactl get-sink-mute @DEFAULT_SINK@ | cut --delimiter=" " -f 2)" == "no" ]; then
            barIcon="󰕾"
        fi
    else
        exit 1
    fi
    barPercent=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | awk '{print substr($5, 1, length($5)-1)}')
elif [ $entity == "brightness" ]; then
    if [ $verb == "up" ]; then
        brightnessctl set 5%+
    elif [ $verb == "down" ]; then
        brightnessctl set 5%-
    else
        exit 1
    fi
    barIcon="󰳲"
    barPercent=$(brightnessctl | sed -En 's/.*\(([0-9]+)%\).*/\1/p')
else
    exit 1
fi

eww update barIcon="$barIcon" barPercent="$barPercent" && eww open overlaybar
barPresses=$(eww get barPresses)
barPresses=$((barPresses + 1))
eww update barPresses="$barPresses"
updateWindow
