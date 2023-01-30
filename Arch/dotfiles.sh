#!/bin/bash

cd Documents
git clone https://github.com/Infernalloo/dotfiles
cd dotfiles
cp fish neofetch alacritty.yml starship.toml $HOME/.config