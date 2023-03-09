#!/bin/sh
"$HOME"/.screenlayout/display.sh
xset r rate 300 80 &
xinput float 15 &
RandoWall &
# hsetroot -root -fill "$HOME/Pictures/Wallpapers/wp-23.png" &
xrdb -merge "$HOME/.Xresources"
[ ! "$(pgrep picom)" ] && picom &
[ ! "$(pgrep dunst)" ] && dunst &
[ ! "$(pgrep dwmblocks)" ] && dwmblocks &
[ ! "$(pgrep dwm)" ] && exec /usr/local/bin/dwm
