#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias la='ls -al --color=auto'

alias vi='nvim'

frick() {
    ps aux | grep "$@" | awk '{print $2}' | xargs kill -9
}

source /usr/share/nvm/init-nvm.sh

export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export WINEPREFIX="$HOME/.local/share/wine_osu"
export WINEARCH=win32

alias cu='nmcli c u aquilad'
alias bc='bluetoothctl'
