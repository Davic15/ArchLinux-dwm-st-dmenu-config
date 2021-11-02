#!/bin/bash

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
# Load some scripts for the status bar in the top
~/dotfiles/fehbg &
#/home/franklin/dotfiles/dwm-bar/dwm_bar.sh &
/home/franklin/dotfiles/dwmbar &

# Active numlock when the dwm starts
numlockx &
# This line fixes the problem with optimus-manager-qt
#prime-offload  
autocutsel -selection PRIMARY -fork &
dunst & 
optimus-manager-qt &
insync start &
caffeine -a &
udiskie -t &

# To solve a problem with android studio and intellij
export _JAVA_AWT_WM_NONREPARENTING=1

# Some transparencies
picom -CGb &

# Save Passwords, Keys, etc
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# Execute dwm
exec dwm
