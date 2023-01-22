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
