#!/usr/bin/env fish

if [ (command -v gnome-terminal) ]
    set -x TERMINAL gnome-terminal
else if [ (command -v terminator) ]
    set -x TERMINAL terminator
else if [ (command -v tilda) ]
    set -x TERMINAL tilda
else if [ (command -v guake) ]
    set -x TERMINAL guake
else if [ (command -v konsole) ]
    set -x TERMINAL konsole
else if [ (command -v lxterminal) ]
    set -x TERMINAL lxterminal
else if [ (command -v yakuake) ]
    set -x TERMINAL yakuake
else if [ (command -v st) ]
    set -x TERMINAL st
else if [ (command -v terminology) ]
    set -x TERMINAL terminology
else if [ (command -v xfce4-terminal) ]
    set -x TERMINAL xfce4-terminal
else if [ (command -v lilyterm) ]
    set -x TERMINAL lilyterm
else if [ (command -v urxvt) ]
    set -x TERMINAL urxvt
else if [ (command -v xterm) ]
    set -x TERMINAL xterm
end
