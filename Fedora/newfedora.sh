#!/bin/bash

# updates the system and install dnf utils for other installation
sudo dnf update --refresh -y && sudo dnf upgrade -y
sudo dnf install dnf-utils -y

# install alacritty
sudo dnf makecache --refresh
sudo dnf install alacritty -y
sudo dnf install fish -y

# install fish
sudo dnf install fish
sudo dnf install util-linux-user
chsh -s /bin/fish

# install starship
curl -sS https://starship.rs/install.sh | sh

# install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

# install Spotify through the flathub
sudo dnf upgrade --refresh -y
sudo dnf install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client -y
#flatpak run com.spotify.Client

# enables nonfree rmp fusion
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#install vim
sudo dnf install vim -y

# install nvim
sudo dnf install -y neovim python3-neovim

# reboots the computer
reboot
