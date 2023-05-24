if status is-interactive
    # Commands to run in interactive sessions can go here
    [ -d "$HOME/.local/bin" ] && set -x PATH "$HOME/.local/bin" $PATH
end
