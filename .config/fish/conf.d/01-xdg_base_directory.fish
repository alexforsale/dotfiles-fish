#!/usr/bin/env fish
if [ -z $XDG_CONFIG_HOME ]
    if [ -d "$HOME/.config" ]
        mkdir -p "$HOME/.config"
    end
    set -x XDG_CONFIG_HOME "$HOME/.config"
end

if [ -z $XDG_CACHE_HOME ]
    if [ -d "$HOME/.cache" ]
        mkdir -p "$HOME/.cache"
    end
    set -x XDG_CACHE_HOME "$HOME/.cache"
end

if [ -z $XDG_DATA_HOME ]
    if [ -d "$HOME/.local/share" ]
        mkdir -p "$HOME/.local/share"
    end
    set -x XDG_DATA_HOME "$HOME/.local/share"
end

if [ -z $XDG_DESKTOP_DIR ]
    set -x XDG_DESKTOP_DIR "$HOME/Desktop"
    mkdir -p $XDG_DESKTOP_DIR
end
if [ -z $XDG_DOWNLOAD_DIR ]
    set -x XDG_DOWNLOAD_DIR "$HOME/Downloads"
    mkdir -p $XDG_DOWNLOAD_DIR
end
if [ -z $XDG_TEMPLATES_DIR ]
    set -x XDG_TEMPLATES_DIR "$HOME/Templates"
    mkdir -p $XDG_TEMPLATES_DIR
end
if [ -z $XDG_PUBLICSHARE_DIR ]
    set -x XDG_PUBLICSHARE_DIR "$HOME/Public"
    mkdir -p $XDG_PUBLICSHARE_DIR
end
if [ -z $XDG_DOCUMENTS_DIR ]
    set -x XDG_DOCUMENTS_DIR "$HOME/Documents"
    mkdir -p $XDG_DOCUMENTS_DIR
end
if [ -z $XDG_MUSIC_DIR ]
    set -x XDG_MUSIC_DIR "$HOME/Music"
    mkdir -p $XDG_MUSIC_DIR
end
if [ -z $XDG_PICTURES_DIR ]
    set -x XDG_PICTURES_DIR "$HOME/Pictures"
    mkdir -p $XDG_PICTURES_DIR
end
if [ -z $XDG_VIDEOS_DIR ]
    set -x XDG_VIDEOS_DIR "$HOME/Videos"
    mkdir -p $XDG_VIDEOS_DIR
end

if [ -n "$GUIX_LOCPATH" ] || [ $DISTRO = "guix" ]
    if [ -d "$HOME/.nix-profile/share" ]
        set -x XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.nix-profile/share"
    end
end
