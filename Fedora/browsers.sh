#!/bin/bash

## Vivaldi ##
#sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
#sudo dnf install vivaldi-stable -y

## Brave browser ##
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

## Opera browser ##
sudo dnf config-manager --add-repo https://rpm.opera.com/rpm
sudo rpm --import https://rpm.opera.com/rpmrepo.key
sudo dnf install opera-stable -y

## Librewolf ##
#sudo dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo
#sudo dnf install librewolf

## Edge ##
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
#sudo dnf install microsoft-edge-stable -y
