#!/bin/bash

if [ "$1" == "$HOME/.cache/current_wallpaper" ] && [ "$2" == "$HOME/.cache/current_wallpaper_hdmi" ]; then
  wall_eDP=$(cat ~/.cache/current_wallpaper)
  wall_HDMI=$(cat ~/.cache/current_wallpaper_hdmi)
  # echo "default if worked from wallpaper switcher"
  swww img -o eDP-1 "$wall_eDP" -t random
  swww img -o HDMI-A-1 "$wall_HDMI" -t random
else
  # echo "else worked from wallpaper switcher"
  swww img -o eDP-1 ~/Downloads/Wallpapers/theme_based/$1 -t random
  swww img -o HDMI-A-1 ~/Downloads/Wallpapers/theme_based/$2 -t random
fi
