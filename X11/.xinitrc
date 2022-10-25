#!/bin/env bash

"$HOME"/.screenlayout/display.sh
xset r rate 300 80 &
hsetroot -root -fill "$HOME/Pictures/Wallpapers/wp-3.jpg" &
xrdb -merge "$HOME/.Xresources" 
[ ! "$(pgrep dwmblocks)" ] && dwmblocks &
[ ! "$(pgrep dwm)" ] && exec /usr/local/bin/dwm
