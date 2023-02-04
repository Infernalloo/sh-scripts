#!/bin/bash

# install vivaldi
sudo pacman -S vivaldi --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -S vivaldi-ffmpeg-codecs --noconfirm

# install brave
sudo pacman -Syu --noconfirm
yay -S brave-bin --noconfirm

# install opera
sudo pacman -S opera-ffmpeg-codecs --noconfirm
sudo pacman -S opera --noconfirm

# install edge
yay -S microsoft-edge-stable-bin --noconfirm
