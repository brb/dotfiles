#!/bin/sh


if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

if [ -s ~/.fonts ]; then
    xset +fp ~/.fonts
fi

xset +fp /usr/share/fonts/TTF
xset r rate 150 50

if [ -s ~/.xbindkeysrc ]; then
    xbindkeys
fi

xflux -l 47.22 -g 8.33 -r 1 -k 4500 # zurich

exec awesome
