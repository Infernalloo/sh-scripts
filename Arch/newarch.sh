#!/bin/bash

# upate system
sudo pacman -Syu --noconfirm

# install alacritty
sudo pacman -S alacritty --noconfirm

# install fish
sudo pacman -S fish

# install starship
sudo pacman -S starship --noconfirm

# install exa
sudo pacman -S install exa --noconfirm

# install spotify
sudo pacman -S spotify-launcher --noconfirm

# install bottom
sudo pacman -S bottom --noconfirm

# install pfetch
sudo pacman -S pfetch --noconfirm

# install vim (in case is not already installed)
sudo pacman -S vim --noconfirm

# install neovim
sudo pacman -S neovim --noconfirm

# reboot
reboot
