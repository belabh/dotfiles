#!/usr/bin/env bash

hyprctl switchxkblayout all next

layMain=$(hyprctl -j devices | jq -r '.keyboards[] | select(.main == true) | .active_keymap')
notify-send -a "Keyboard" -r 91190 -t 800 -i "keyboard" "Keyboard" "   Switched to : ${layMain}"