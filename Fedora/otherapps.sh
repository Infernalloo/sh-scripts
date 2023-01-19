#!/bin/bash

### BROWSERS ###
## Vivaldi ##
# add rpm
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
# install
sudo dnf install vivaldi-stable -y

## Brave browser ##
# add rpm
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
# import key
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
# install
sudo dnf install brave-browser -y

## Opera browser ##
# import gpg key
sudo rpm --import https://rpm.opera.com/rpmrepo.key
# add rpm
sudo dnf config-manager --add-repo https://rpm.opera.com/rpm
# install
sudo dnf install opera-stable -y

## Librewolf ##
# add rpm
sudo dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo
# install
sudo dnf install librewolf


### Terminals ###
## Kitty ##
sudo dnf install kitty -y

## Sakura ##
sudo dnf install sakura -y

## St ##
sudo dnf install st -y

## Xterm ##
sudo dnf install xterm -y


### Miscellanous ###
## GitHub Desktop ##
# add rpm
sudo rpm --import https://packagecloud.io/shiftkey/desktop/gpgkey
sudo sh -c 'echo -e "[shiftkey]\nname=GitHub Desktop\nbaseurl=https://packagecloud.io/shiftkey/desktop/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/shiftkey/desktop/gpgkey" > /etc/yum.repos.d/shiftkey-desktop.repo'
# install
sudo dnf install github-desktop -y
