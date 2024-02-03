#!/bin/sh

"$HOME"/.screenlayout/layout1.sh

# wal --saturate 0.5 -i "$HOME/Pictures/Wallpapers/" &
# RandoWall &
hsetroot -fill $HOME/Pictures/Wallpapers/wallhaven-2yjp6x_1920x1080_.png

xset r rate 280 80 &

# touchpad and trackpoint settings
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
xinput set-button-map "TPPS/2 IBM TrackPoint" 1 0 3
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.000001
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Profile Enabled" 0, 0, 1
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Natural Scrolling Enabled" 1
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Custom Scroll Step" 0.000001
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Custom Motion Step" 0.000001

# move escape to it's correct location
setxkbmap -option caps:swapescape

xrdb -merge "$HOME/.Xresources"

# [ ! "$(pgrep nm-applet)" ] && nm-applet &
[ ! "$(pgrep picom)" ] && picom &
[ ! "$(pgrep dunst)" ] && dunst &
[ ! "$(pgrep xscreensaver)" ] && exec xscreensaver &
# [ ! "$(pgrep dwmblocks)" ] && dwmblocks &
# [ ! "$(pgrep dwm)" ] && exec /usr/local/bin/dwm
[ ! "$(pgrep dwm)" ] && exec /usr/local/bin/dwm
