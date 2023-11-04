if status is-interactive
    # Commands to run in interactive sessions can go here
    [ -d "$HOME/.local/bin" ] && set -x PATH "$HOME/.local/bin" $PATH

    # completions
    for dir in /usr/share/fish/completions \
        /usr/local/share/fish/completions \
        ~/.config/fish/completions

        if test -d $dir
            source $dir/*
        end
    end
end
