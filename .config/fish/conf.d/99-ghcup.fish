#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-go.fish
# $GOPATH configuration
# <alexforsale@yahoo.com>

if [ (command -v ghcup) ]
    # set GOPATH to ~/.local so we don't need
    # to add more PATH
    [ -d $HOME/.cabal/bin ] && set -x PATH $HOME/.cabal/bin $PATH
    [ -d $HOME/.ghcup/bin ] && set -x PATH $HOME/.ghcup/bin $PATH
end
