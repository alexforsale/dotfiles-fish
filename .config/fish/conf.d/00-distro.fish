#!/usr/bin/env fish
if [ -f /etc/os-release ]
  # freedesktop.org and systemd
  set -x DISTRO (grep '^ID=' /etc/os-release| sed 's/^ID=//')
  set -x DISTROVER (grep '^VERSION_ID' /etc/os-release| sed 's/^ID=//')
else if [ (command -v lsb_release >/dev/null) ]
  # linuxbase.org
  set -x DISTRO (lsb_release -si | awk '{print tolower ($0)}')
  set -x DISTROVER (lsb_release -sr | awk '{print tolower ($0)}')
else if [ -f /etc/lsb-release ]
  # For some versions of Debian/Ubuntu without lsb_release command
  set -x DISTRO (grep '^ID' /etc/lsb-release| sed 's/^DISTRIB_ID=//')
  set -x DISTROVER (grep '^VERSION_ID' /etc/lsb-release| sed 's/^DISTRIB_RELEASE=//')
else if [ -f /etc/debian_version ]; then
  # Older Debian/Ubuntu/etc.
  set -x DISTRO Debian
  set -x DISTROVER (cat /etc/debian_version)
else
  set -x DISTRO (uname -s)
  set -x DISTROVER (uname -r)
end
