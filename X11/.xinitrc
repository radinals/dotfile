#!/bin/sh

"$HOME"/.screenlayout/layout_hd.sh
"$HOME"/.screenayout/layout1.sh

RandoWall "$HOME/Pictures/Wallpapers" &

xset r rate 280 80 & # set the autorepeat
xset +dpms & # enable dpms
xset b off & # turn off bell

# touchpad and trackpoint settings
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
xinput set-button-map "TPPS/2 IBM TrackPoint" 1 0 3 &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.000001 &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Profile Enabled" 0, 0, 1 &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Natural Scrolling Enabled" 1 &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Custom Scroll Step" 0.000001 &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Custom Motion Step" 0.000001 &

# move escape to it's correct location
setxkbmap -option caps:swapescape &

xrdb -merge "$HOME/.Xresources" -I"$HOME/.Xresources.d"

[ "$(pgrep picom)" ] && killall picom
[ "$(pgrep dunst)" ] && killall dunst
[ "$(pgrep xscreensaver)" ] && killall xscreensaver

[ ! "$(pgrep picom)" ] && picomd.sh &
[ ! "$(pgrep dunst)" ] && exec dunst &
[ ! "$(pgrep xscreensaver)" ] && exec xscreensaver &
[ ! "$(pgrep dwm)" ] && exec /usr/local/bin/dwm
