#!/bin/bash

# upate system
sudo pacman -Syu --noconfirm

# install alacritty
sudo pacman -S alacritty --noconfirm

# install vivaldi and codecs
sudo pacman -S vivaldi --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -S vivaldi-ffmpeg-codecs --noconfirm

# install yay
sudo pacman -S --needed base-devel git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

# install github desktop
yay -S github-desktop-bin --noconfirm

# install lutris
sudo pacman -S lutris --noconfirm

# install steam
sudo pacman -S steam --noconfirm

# install spotify
sudo pacman -S spotify-launcher --noconfirm

# install bottom
sudo pacman -S bottom --noconfirm

# install pfetch
sudo pacman -S pfetch

# install vim (in case is not already installed)
sudo pacman -S vim --noconfirm

# install vscodium
#yay -S vscodium --noconfirm

# reboot
reboot
