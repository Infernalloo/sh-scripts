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

# install vim
sudo apt install vim -y

# install starship
curl -sS https://starship.rs/install.sh | sh

# install fish shell
sudo apt install fish -y

# install kitty
sudo apt install kitty -y

# install vscode
sudo apt install code -y

#  Vivaldi
sudo apt -y install wget
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update -y && sudo apt install vivaldi-stable -y

# install github-cli
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# install spotify from flathub
flatpak install flathub com.spotify.Client

# reboot
reboot
