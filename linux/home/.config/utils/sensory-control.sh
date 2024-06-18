#!/bin/bash

entity="$1"
verb="$2"
current_vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)

if [ "$entity" == "volume" ]; then
    if [ "$verb" == "up" ]; then
        if [ $current_vol -lt 100 ]; then
            pactl set-sink-volume @DEFAULT_SINK@ +5%
        elif [ $current_vol -gt 100 ]; then
            pactl set-sink-volume @DEFAULT_SINK@ 100%
        fi
    elif [ "$verb" == "down" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ -5%
    elif [ "$verb" == "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    else
        exit 1
    fi
elif [ "$entity" == "brightness" ]; then
    if [ "$verb" == "up" ]; then
        brightnessctl set 5%+
    elif [ "$verb" == "down" ]; then
        brightnessctl set 5%-
    else
        exit 1
    fi
else
    exit 1
fi