#!/bin/sh

if [ -s ~/.fonts ]; then
    xset +fp ~/.fonts
fi

xset +fp /usr/share/fonts/TTF
xset r rate 150 50

if [ -s ~/.xbindkeysrc ]; then
    xbindkeys
fi

if [ -s ~/.Xdefaults ]; then
    xrdb ~/.Xdefaults
fi

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

#redshift

dunst &

exec i3
