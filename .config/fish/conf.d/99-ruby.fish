#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-ruby.fish
# ruby configuration
# <alexforsale@yahoo.com>

if [ (command -v ruby) ] &&
        [ -d (ruby -e 'print Gem.user_dir')/bin ]
    set -x PATH (ruby -e 'print Gem.user_dir')/bin $PATH
end
