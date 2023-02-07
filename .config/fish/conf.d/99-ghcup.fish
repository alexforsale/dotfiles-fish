#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-go.fish
# $GOPATH configuration
# <alexforsale@yahoo.com>

if [ (command -v ghcup) ]
    [ -d $HOME/.cabal/bin ] && set -x PATH $HOME/.cabal/bin $PATH
    [ -d $HOME/.ghcup/bin ] && set -x PATH $HOME/.ghcup/bin $PATH
end
