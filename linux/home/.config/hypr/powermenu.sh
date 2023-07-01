#!/bin/bash

windows=$(eww windows)

waybarStatus=$(pgrep waybar)

if [[ "$windows" =~ [\s\S]*\*powermenu[\s\S]*  ]]; then
  eww close powermenu && pkill -USR1 waybar
else
  pkill waybar && eww open powermenu
fi

