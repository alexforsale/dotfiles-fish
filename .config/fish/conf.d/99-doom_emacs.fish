#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-doom_emacs.sh
# doom emacs path
# <alexforsale@yahoo.com>

if [ (command -v emacs) ] &&
        [ -e $HOME/.emacs.d/bin/doom ]
    [ ! (command -v doom) ] &&
        set -x PATH $PATH $HOME/.emacs.d/bin
else if [ -d $HOME/.config/doom/bin ]
    [ ! (command -v doom) ]
    set -x PATH $PATH $HOME/.config/doom/bin
end
