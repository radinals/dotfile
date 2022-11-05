#----------------------------#
#            _               #
#    _______| |__  _ __ ___  #
#   |_  / __| '_ \| '__/ __| #
#  _ / /\__ \ | | | | | (__  #
# (_)___|___/_| |_|_|  \___| #
#                            #
#----------------------------#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# setopt PROMPT_SUBST
PROMPT=' %F{#268bd2}%n@%m: %B%|%F{#dc322f}% %~ %F{#719611}%F{#b58900}>%b%f '

# Completion Menu
zmodload zsh/complist
zstyle ':completion:*' menu select

# Auto Completiion
zstyle ':completion:*' \
    matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit; \
    compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"; \
    _comp_options+=(globdots);

# vi mode
bindkey -v

# disable CTRL+s and CTRL+q
stty stop ''; stty start '';

# show command completion time.
# export KEYTIMEOUT=1

# Report command running time if takes > 3 seconds
# REPORTTIME=5

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
        [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || 
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}

zle -N zle-keymap-select

# ci", ci', ci`, di", etc
autoload -U select-quotet
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m "$c" select-quoted
    done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
        bindkey -M $m "$c" select-bracketed
    done
done

zle-line-init() {
    # initiate `vi insert` as keymap 
    # (can be removed if `bindkey -V` has been set elsewhere)
    zle -K viins 
    echo -ne "\e[5 q"
}

zle -N zle-line-init
# Use beam shape cursor on startup.
echo -ne '\e[5 q' 
# Use beam shape cursor for each new prompt.
precmd() { echo -ne '\e[5 q' ;} 

# Command History
HISTFILE="$HOME/.cache/zsh/zsh_history"
HISTSIZE=10000
SAVEHIST=10000
# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY
# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS

# Correct spelling of all arguments in the command line
# setopt CORRECT_ALL

# Do not remember commands that start with a whitespace
# setopt HIST_IGNORE_SPACE

extract(){
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"     ;;
            *.tar.gz)    tar xvzf "$1"     ;;
            *.tar.xz)    unxz "$1"         ;;
            *.bz2)       bunzip2 "$1"      ;;
            *.rar)       unrar-free x "$1" ;;
            *.gz)        gunzip "$1"       ;;
            *.tar)       tar xvf "$1"      ;;
            *.tbz2)      tar xvjf "$1"     ;;
            *.tgz)       tar xvzf "$1"     ;;
            *.zip)       unzip "$1" -d "$(echo "$1" | sed -e 's/.zip//g')" ;;
            *.Z)         uncompress "$1"   ;;
            *.7z)        p7zip -d "$1"     ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

maketar(){
    tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"
}

makezip(){
    zip -r "${1%%/}.zip" "$1"
}

makechd(){
    chdman createcd "$1" -o "${1%%.cue}.chd"
}

# Aliases
source "$HOME/.alias"

# zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
