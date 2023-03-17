#!/bin/bash

# install neofetch
sudo dnf install neofetch -y

# install bunnyfetch
sudo dnf install gcc-go -y
sudo dnf install golang-bin -y
# manual compile
git clone https://github.com/Rosettea/Bunnyfetch
cd Bunnyfetch
go get -d ./...
go build -ldflags "-w -s" # ldflags make the binary smaller

# install pfetch-rs
#sudo dnf install cargo -y
#cargo install pfetch

# install neofetch
sudo dnf install neofetch -y

# install nitch
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh


