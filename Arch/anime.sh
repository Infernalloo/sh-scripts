#!/bin/bash

# install dependecies in case not already installed
sudo pacman -S grep --noconfirm
sudo pacman -S sed --noconfirm
sudo pacman -S awk --noconfirm
sudo pacman -S curl --noconfirm
sudo pacman -S wget --noconfirm
sudo pacman -S fzf --noconfirm
sudo pacman -S mpv --noconfirm
sudo pacman -S vlc --noconfirm
sudo pacman -S ffmpeg --noconfirm

# install jerry
sudo curl -sL github.com/justchokingaround/jerry/raw/main/jerry.sh -o /usr/local/bin/jerry &&
sudo chmod +x /usr/local/bin/jerry

# install ani-cli
yay -S ani-cli --noconfirm