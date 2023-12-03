#!/bin/bash

# Update the system
sudo apt update -y && sudo apt upgrade -y

# Install base utilities
sudo apt install git wget curl gpg -y
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y

# Install termianl related
sudo apt install vim neovim eza -y
sudo apt install neofetch cmatrix lolcat -y
cd
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
sudo dpkg -i bottom_0.6.8_amd64.deb
cd
git clone https://github.com/dylanaraps/pfetch.git
sudo install pfetch/pfetch /usr/local/bin
ls -l /usr/local/bin/pfetch
cd
git clone https://github.com/Rosettea/Bunnyfetch
cd Bunnyfetch
go get -d ./...
go build -ldflags "-w -s" # ldflags make the binary smaller
cd

## Install browsers
# Firefox
sudo apt install firefox -y

# Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y && sudo apt install brave-browser -y

# Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update -y && sudo apt install vivaldi-stable -y

# Gaming related
sudo add-apt-repository multiverse -y
sudo apt update -y && sudo apt install steam -y

# From flathub
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub or.visualstudio.code -y

