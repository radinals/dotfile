#
# ~/.zprofile
#

[ "$(tty)" = "/dev/tty1" ] && pgrep dwm || startx "$HOME/.xinitrc"
