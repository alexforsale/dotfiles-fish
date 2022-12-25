#!/usr/bin/env fish
# ~/.config/fish/conf.d/06-browser.sh
# ${BROWSER} configuration
# <alexforsale@yahoo.com>

# Browser
for browser in google-chrome-stable midori qutebrowser chromium firefox seamonkey falkon
    if [ $(command -v browser) ]
        [ -z $BROWSER ] && set -x BROWSER $browser
    else
        for browser in elinks lynx w3m links
            if [ $(command -v browser) ]
                [ -z $BROWSER ] && set -x BROWSER $browser
            end
        end
    end
end
