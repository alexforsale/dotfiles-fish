#!/usr/bin/env fish
# ~/.config/fish/conf.d/03-terminal.sh
# ${TERMINAL} apps
# <alexforsale@yahoo.com>

for term in gnome terminal terminator tilda guake konsole lxterminal yakuake st terminology xfce4-terminal xterm alacritty urxvt
    if [ $(command -v $term) ]
        [ -z $TERMINAL ] && set -x TERMINAL $term
    end
end
