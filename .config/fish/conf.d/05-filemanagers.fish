#!/usr/bin/env fish
# ~/.config/fish/conf.d/05-filemanagers.sh
# filemanager configuration
# <alexforsale@yahoo.com>

for file in ranger pcmanfm thunar caja nautilus nemo dolphin rox
    if [ $(command -v $file) ]
        [ -z $FILE ] && set -e FILE $file
    end
end
