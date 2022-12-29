#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-screen.fish
# configuration for GNU Screen
# <alexforsale@yahoo.com>

if [ (command -v screen) ] &&
        [ ! -d $XDG_CONFIG_HOME/screen ]
    if [ -d $HOME/.screen ]
        mv $HOME/.screen $XDG_CONFIG_HOME/screen
    else
        mkdir -p $XDG_CONFIG_HOME/screen
    end
end
set -x SCREENDIR $XDG_CONFIG_HOME/screen
chmod 700 $SCREENDIR
set -x SCREENRC $SCREENDIR/config
