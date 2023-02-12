#!/usr/bin/env fish


set -x GPG_TTY (tty)

# https://wiki.gentoo.org/wiki/GnuPG#Automatically_starting_the_GPG_agent
if [ -n $SSH_CONNECTION ]
    set -x PINENTRY_USER_DATA "USE_CURSES=1"
end

switch $DISTRO
    case freebsd
        for i in curses gnome3 gtk2 qt5
            if [ (command -v pinentry-$i) ]
                set _PINENTRY (command -v pinentry-$i)
            else
                set _PINENTRY (command -v pinentry)
            end
        end
    case '*'
        if [ -z "(pgrep -u $USER -x gpg-agent)" ]
            gpg-agent --pinentry-program (command -v pinentry) >/dev/null
        end
end
