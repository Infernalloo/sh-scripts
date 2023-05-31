#!/bin/bash

# updates the system and install dnf utils for other installation
sudo dnf update --refresh -y && sudo dnf upgrade -y
sudo dnf install dnf-utils -y

# install alacritty
sudo dnf makecache --refresh
sudo dnf install alacritty -y

# install fish
sudo dnf install fish -y
sudo dnf install util-linux-user -y
chsh -s /bin/fish

# install exa
sudo dnf install exa -y

# install starship
curl -sS https://starship.rs/install.sh | sh

#install vim
sudo dnf install vim -y

# install nvim
sudo dnf install -y neovim python3-neovim

# enables rpm fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# to do in bash shell
cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
sudo dnf check-update -y
sudo dnf install code -y

## Vivaldi ##
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable -y

# install Spotify through the flathub
sudo dnf upgrade --refresh -y
sudo dnf install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client -y
#flatpak run com.spotify.Client

# reboots the computer
reboot
