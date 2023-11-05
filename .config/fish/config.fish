if status is-interactive
    # Commands to run in interactive sessions can go here
    [ -d "$HOME/.local/bin" ] && set -x PATH "$HOME/.local/bin" $PATH

    # completions
    for dir in /usr/share/fish/completions \
        /usr/share/fish/vendor_completions.d/ \
        /usr/local/share/fish/completions \
        ~/.config/fish/completions

        if test -d $dir
            source $dir/*
        end
    end
end

# from https://wiki.archlinux.org/title/fish
# source /etc/profile with bash
if status is-login
    exec bash -c "test -e /etc/profile && source /etc/profile;\
    exec fish"
end
