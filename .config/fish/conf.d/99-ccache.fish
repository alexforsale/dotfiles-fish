#!/usr/bin/env fish
# ~/.config/fish/conf.d/99-ccache.fish
# ccache configuration
# <alexforsale@yahoo.com>

if [ (command -v ccache) ] &&
        [ -d /usr/lib/ccache/bin ]
    if [ $SHELL != /bin/sh ] &&
            [ (command -v pathprepend) ]
        pathprepend /usr/lib/ccache/bin
    else
        set -x PATH /usr/lib/ccache/bin $PATH
    end
end

switch $DISTRO
    case gentoo
        [ -r /var/cache/ccache ] &&
            set -x CCACHE_DIR /var/cache/ccache
end
