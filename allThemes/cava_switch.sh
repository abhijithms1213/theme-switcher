#!/bin/bash
echo "called cava"
# open kitty with a predfined command and specifc theme 
# kitty -o include="~/.config/kitty/themes/Apprentice.conf" --hold cava
if [[ $(pgrep -x "cava") ]]; then
  echo "if worked"
  killall "cava"
  cp ~/.config/cava/themes/$1 ~/.config/cava/config
  sh cava_open.sh
  echo "if : hyprctl worked?"
else
  cp ~/.config/cava/themes/$1 ~/.config/cava/config # if it is not open, just copy the config
  # hyprctl dispatch exec [workspace 3 silent] "kitty -o include='~/.config/kitty/themes/Apprentice.conf' --hold cava"
fi
