#!/bin/bash

# neofetch
sudo pacman -S neofetch --noconfirm

# nitch
cd
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
cd -

# bunnyfetch
pikaur -S bunnyfetch --noconfirm

# pfetch-rs
#yay -S pfetch-rs --noconfirm

# pfetch
pikaur -S pfetch --noconfirm

# install bottom
sudo pacman -S bottom --noconfirm

# intall cmatrix
sudo pacman -S cmatrix --noconfirm

# install asciiquarium
sudo pacman -S asciiquarium --noconfirm

# install lolcat
sudo pacman -S lolcat --noconfirm
