#!/bin/bash

# rofi dmenu  
select="$(echo 'Reading|default mode|workout|devops|projects|communication|tired|normal|else' | rofi -sep '|' -dmenu)"
sh $HOME/Documents/projects/scripts/theme-switch-arch/theme_changer.sh "$select"
