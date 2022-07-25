#!/bin/sh

setxkbmap us workman
xrandr --output DVI-D-0 --off --output HDMI-0 --off --output HDMI-1 --off --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-3 --off
gentoo-pipewire-launcher &
picom --daemon &
#emacs &
pidgin &
exec dbus-launch --sh-syntax --exit-with-session awesome
