#!/bin/bash

scriptDir=$HOME/Documents/projects/scripts/theme-switch-arch/allThemes

if [[  "$1" == "Reading" ]]; then
  "${scriptDir}/wallpaper_switcher.sh" "reading_1.jpg" "reading_2.jpg"
elif [[ "$1" == "Project mode" ]]; then
  "${scriptDir}/wallpaper_switcher.sh" "project_1.jpg" "project_2.jpg"
fi
