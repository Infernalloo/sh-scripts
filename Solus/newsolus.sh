#!/bin/bash

# update system
sudo eopkg upgrade -y

# install git
sudo eopkg install git -y

# install vivaldi
sudo eopkg install vivaldi-stable -y

# install alacritty
sudo eopkg install alacritty -y

# install vim and neovim
sudo eopkg install vim -y
sudo eopkg install neovim -y

# install fish
sudo eopkg install fish -y

# install starship
sudo eopkg install starship -y

# install exa
sudo eopkg install exa -y

# install vscode
sudo eopkg install vscode -y
