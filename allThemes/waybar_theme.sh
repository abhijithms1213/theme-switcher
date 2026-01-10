echo "@import './themes/$1.css';" > $HOME/.config/waybar/style.css

killall waybar
waybar &
