#!/bin/bash

# install fish shell
sudo apt install fish -y

# install starship prompt
curl -sS https://starship.rs/install.sh | sh

# clone dotfiles form github 
cd Documents
mkdir github
cd github
git clone https://github.com/Infernalloo/dotfiles
