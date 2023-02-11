#!/bin/bash

# update system
sudo zypper -n ref && sudo zypper -n dup

# install github-cli
sudo zypper addrepo https://cli.github.com/packages/rpm/gh-cli.repo
sudo zypper -n ref
sudo zypper -n install gh

# install neovim
sudo zypper -n install neovim

# install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode
sudo zypper -y ref
sudo zypper -y install code
