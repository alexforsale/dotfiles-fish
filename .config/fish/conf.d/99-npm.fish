#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-npm.fish
# node packaged module configuration
# see https://wiki.archlinux.org/index.php/Node.js
# <alexforsale@yahoo.com>

if [ (command -v npm) ]
    set -x npm_config_prefix "$HOME/.local"
end
