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

# install vscode
sudo apt install code -y

# installs bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
sudo dpkg -i bottom_0.6.8_amd64.deb
sudo apt install ./bottom_0.6.8_amd64.deb -y

# install spotify from flathub
flatpak install flathub com.spotify.Client

# reboot
reboot
