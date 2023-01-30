#!/bin/bash

# upate system
sudo pacman -Syu --noconfirm

# install alacritty
sudo pacman -S alacritty --noconfirm

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

# install yay
sudo pacman -S --needed base-devel git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

# reboot
reboot
