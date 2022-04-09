#!/bin/bash
#
# ~/.xinitrc


[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# matlab

export _JAVA_AWT_WM_NONREPARENTING=1

#sxhkd -c $HOME/.config/berry/sxhkdrc & 
#exec berry 

# leftwm
#exec dbus-launch leftwm

# bspwm 
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec bspwm
