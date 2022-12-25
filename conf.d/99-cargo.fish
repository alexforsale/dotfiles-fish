#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-cargo.fish
# cargo configuration
# https://wiki.archlinux.org/index.php/Rust#Cargo
# <alexforsale@yahoo.com>

if [ -d $HOME/.cargo/bin ]
    set -x PATH $HOME/.cargo/bin $PATH
end
