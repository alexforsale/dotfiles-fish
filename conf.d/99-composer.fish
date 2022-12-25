#!/usr/bin/env fish
if command -v composer &>/dev/null and
    test -d "$HOME/.config/composer/vendor/bin"
    set -x PATH $PATH "$HOME/.config/composer/vendor/bin"
end
