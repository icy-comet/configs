#!/bin/bash

entity="$1"
verb="$2"

if [ "$entity" == "volume" ]; then
    if [ "$verb" == "up" ]; then
        volumectl -d -u up
    elif [ "$verb" == "down" ]; then
        volumectl -d -u down
    elif [ "$verb" == "mute" ]; then
        volumectl -d -u mute
    else
        exit 1
    fi
elif [ "$entity" == "brightness" ]; then
    if [ "$verb" == "up" ]; then
        lightctl -d up
    elif [ "$verb" == "down" ]; then
        lightctl -d down
    else
        exit 1
    fi
else
    exit 1
fi