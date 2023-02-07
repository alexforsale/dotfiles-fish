#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-go.fish
# $GOPATH configuration
# <alexforsale@yahoo.com>

if [ (command -v go) ]
    # set GOPATH to ~/.local so we don't need
    # to add more PATH
    set -x GOPATH $HOME/.local
end
