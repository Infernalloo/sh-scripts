#!/bin/bash
# update system
sudo apt update -y && sudo apt upgrade -y

# install git
sudo apt install git -y

# install vim
sudo apt install vim -y

# install fish
sudo apt install fish -y

# install neovim
sudo apt install neovim -y

# install alacritty
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y
sudo apt install alacritty -y

# Firefox
sudo apt install firefox -y

# Vivaldi
sudo apt install vivaldi-stable -y

# Brave
sudo apt install brave-browser -y

# install wget
sudo apt install wget gpg -y

# install exa
sudo apt install exa -y

# install starship
cd
curl -sS https://starship.rs/install.sh | sh
cd

# install vscode
sudo apt install code -y

# install spotify from flathub
flatpak install flathub com.spotify.Client -y

# installs bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
sudo dpkg -i bottom_0.6.8_amd64.deb
sudo apt install ./bottom_0.6.8_amd64.deb -y
cd
# install neofetch
sudo apt install neofetch -y

# install cmatrix
sudo apt install cmatrix -y

# install lolcat
sudo apt install lolcat -y

# install pfetch
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch
cd

# install bunnyfetch
cd
git clone https://github.com/Rosettea/Bunnyfetch
cd Bunnyfetch
go get -d ./...
go build -ldflags "-w -s" # ldflags make the binary smaller
cd

# install steam
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y

# Reboot
reboot
