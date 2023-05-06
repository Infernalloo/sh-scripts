#!/bin/bash

# update system
sudo apt update -y && sudo apt upgrade -y

# install git
sudo apt install git -y

# install wget
sudo apt install wget gpg -y

# install exa
sudo apt install exa -y

# install vim
sudo apt install vim -y

# install neovim
sudo apt install neovim -y

# install alacritty
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
sudo apt install alacritty -y

# install starship
curl -sS https://starship.rs/install.sh | sh

# install fish
sudo apt install fish -y

# install vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install

#  Vivaldi
sudo apt -y install wget
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update -y && sudo apt install vivaldi-stable -y

# install spotify from flathub
flatpak install flathub com.spotify.Client

# reboot
reboot
