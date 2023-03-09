# XDG Directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"

# Paths
export PATH="$PATH:/sbin:$HOME/.local/bin:$HOME/.local/bin/scripts"
# source $HOME/.local/share/cargo/env

# Define default programs
export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"
export TERMINAL="/usr/local/bin/st"
export BROWSER="/usr/bin/qutebrowser"
export READER="/usr/bin/zathura"
export IMAGE="/usr/bin/sxiv"
export VIDEO="/usr/bin/mpv"

# set zsh config file dir
# export ZDOTDIR="$XDG_CONFIG_HOME/shell/zsh"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

# rustup
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# elinks
export ELINKS_CONFDIR="$XDG_CONFIG_HOME/elinks"

# texlive
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"

# virtualenv
export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"

# gtk
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# libice
export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"

# Xauthority
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# xinitrc
export XINITRC="$HOME/.xinitrc"

# # xserverrc
# export XSERVERRC="$HOME/.xserverrc"

# xresources
export XRESOURCESRC="$HOME/.Xresources"

# # xmodmap
# export XMODMAPRC="$HOME/.Xmodmap"

# Disable less history
export LESSHISTFILE=-

# SDL Controllers
export SDL_GAMECONTROLLERCONFIG="03000000790000000600000010010000,Microntek USB Joystick,a:b2,b:b1,x:b3,y:b0,back:b8,start:b9,leftstick:b10,rightstick:b11,leftshoulder:b4,rightshoulder:b5,dpup:h0.1,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,leftx:a0,lefty:a1,rightx:a2,righty:a3,lefttrigger:b6,righttrigger:b7,platform:Linux,"
