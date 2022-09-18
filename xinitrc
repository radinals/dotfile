#!/bin/env bash
"$HOME"/.screenlayout/display.sh
xrandr  --dpi 142 &
xrdb -merge -I "$HOME/.config/X11/Xresources.d" "$HOME/.config/X11/Xresources"
xset r rate 300 80 &
dwmblocks &
hsetroot -fill "$HOME/Pictures/Wallpapers/wp-78.png" &
xmodmap "$HOME/.config/X11/Xmodmap"
exec /usr/local/bin/dwm
