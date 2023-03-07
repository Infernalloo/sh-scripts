#!/bin/bash

# upate system
sudo pacman -Syu --noconfirm

# install alacritty
sudo pacman -S alacritty --noconfirm

# install fish
sudo pacman -S fish --noconfirm

# install starship
sudo pacman -S starship --noconfirm

# install exa
sudo pacman -S exa --noconfirm

# install vim
sudo pacman -S vim --noconfirm

# install neovim
sudo pacman -S neovim --noconfirm

# install vscode
yay -S visual-studio-code-bin --noconfirm

# install spotify
sudo pacman -S flatpak --noconfirm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client

# reboot
