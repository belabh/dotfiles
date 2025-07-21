#!/usr/bin/env bash

# (removed unused scrDir variable)


hyprctl switchxkblayout all next

layMain=$(hyprctl -j devices | jq -r '.keyboards[] | select(.main == true) | .active_keymap')
notify-send -a "Keyboard" -r 91190 -t 800 -i "${HOME}/.config/hypr/icons/keyboard.svg" "Keyboard" "Switched to : ${layMain}"