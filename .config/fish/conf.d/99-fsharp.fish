#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-fsharp.fish
# configuration for F#
# <alexforsale@yahoo.com>

if [ (command -v dotnet) ] &&
    [ -d $HOME/.dotnet/tools ]
    set -x PATH $PATH $HOME/.dotnet/tools
end
