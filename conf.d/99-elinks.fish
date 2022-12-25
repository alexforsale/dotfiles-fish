#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-elinks.fish
# configuration for elinks
# <alexforsale@yahoo.com>

if [ $(command -v elinks) ] &&
        [ -d $XDG_CONFIG_HOME/elinks ] &&
        [ -d $HOME/.elinks ]
    mv $HOME/.elinks $XDG_CONFIG_HOME/elinks
else
    mkdir -p $XDG_CONFIG_HOME/elinks
end
set -x ELINKS_CONFDIR $XDG_CONFIG_HOME/elinks
