#!/usr/bin/env fish
# ~/.config/profile.d/99-perl.sh
# configuration for perl
# <alexforsale@yahoo.com>

[ ! -d "$HOME/.local/perl5/bin" ] &&
    mkdir -p "$HOME/.local/perl5/bin"
[ ! -d "$HOME/.local/perl5/lib/perl5" ] &&
    mkdir -p "$HOME/.local/perl5/lib/perl5"

set -x PATH $HOME/.local/perl5/bin $PATH
set -x PERL5LIB $HOME/.local/perl5/lib/perl5
set -x PERL_LOCAL_LIB_ROOT $HOME/.local/perl5
set -x PERL_MB_OPT "--install_base \"$HOME/.local/perl5\""
set -x PERL_MM_OPT "INSTALL_BASE=$HOME/.local/perl5"
