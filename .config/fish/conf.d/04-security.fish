#!/usr/bin/env fish
# ~/.config/fish/conf.d/04-security.sh
# various security apps
# <alexforsale@yahoo.com>

# from https://www.gnupg.org/documentation/manuals/gnupg/Invoking-GPG_002dAGENT.html
[ -z $GPG_TTY ] && set -x GPG_TTY "$(tty)"

# https://wiki.gentoo.org/wiki/GnuPG#Automatically_starting_the_GPG_agent
if [ -n "$SSH_CONNECTION" ]
    set -x PINENTRY_USER_DATA "USE_CURSES=1"
end

switch $DISTRO
    case freebsd
        for i in curses gnome3 gtk2 qt5
            if [ $(command -v pinentry-$i) ]
                set _PINENTRY $(command -v pinentry-$i)
            else
                set _PINENTRY $(command -v pinentry)
            end
        end
        if [ ! "$(pgrep -u $USER -x gpg-agent)" ]
            gpg-agent --enable-ssh-support \
                --pinentry-program "$_PINENTRY" \
                --daemon $argv
            if [ -f $HOME/.gpg-agent-info ]
                . $HOME/.gpg-agent-info
                export GPG_AGENT_INFO SSH_AUTH_SOCK
            end
        end
    case '*'
        if [ -z "$(pgrep -u $USER -x gpg-agent)" ]
            gpg-agent --pinentry-program $(command -v pinentry) &>/dev/null
        end
end

# keychain
# https://wiki.gentoo.org/wiki/Keychain
if [ "$(command -v keychain)" ]
    [ -z "$HOSTNAME" ] && set -x HOSTNAME "$(uname -n)"
    keychain --quiet --agents "gpg,ssh"
    [ -f "$HOME/.keychain/$HOSTNAME-sh" ] &&
        . "$HOME/.keychain/$HOSTNAME-sh"
    [ -f "$HOME/.keychain/$HOSTNAME-sh-gpg" ] &&
        . "$HOME/.keychain/$HOSTNAME-sh-gpg"
end
