#!/usr/bin/env fish

if [ -f "$HOME/.config/chemacs/profile" ] &&
        [ -z $CHEMACS_PROFILE ]
    set -x CHEMACS_PROFILE (cat "$HOME/.config/chemacs/profile")
else if [ -f "$HOME/emacs-profile" ]
    set -x CHEMACS_PROFILE (cat "$HOME/.emacs-profile")
end

if [ -n $CHEMACS_PROFILE ]
    set emacs_args "-s $CHEMACS_PROFILE"
end

if [ (command -v emacs) ]
    if [ -z $VISUAL ]
        set -x VISUAL "emacsclient -t $emacs_args -a ''"
    end
    if [ -z $EDITOR ]
        set -x EDITOR "emacsclient -c $emacs_args -a ''"
    end
    set -x ALTERNATE_EDITOR $VISUAL
else if [ (command -v gvim) ]
    if [ -z $EDITOR ]
        set -x EDITOR gvim
    end
    if [ -z $VISUAL ]
    end
else
    for editor in nvim leafpad l3afpad kate pluma kwrite scribe geany gedit code vi
        if [ (command -v $editor ) ]
            [ -z $EDITOR ] && set -x EDITOR $editor
        end
        set -x VISUAL $EDITOR
        set -x ALTERNATE_EDITOR $EDITOR
    end
end
