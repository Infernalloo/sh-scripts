#!/bin/bash

# install steam
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y

# install lutris
sudo apt install lutris -y

# install bottles from flathub
flatpak install flathub com.usebottles.bottles

# install discord
sudo apt install discord -y