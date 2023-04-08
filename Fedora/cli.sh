#!/bin/bash

# install bottom
sudo dnf copr enable atim/bottom -y
sudo dnf install bottom -y

# install neofetch
sudo dnf install neofetch -y

# install nitch 
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh

# install bunnyfetch
sudo dnf install go -y
go install github.com/Rosettea/bunnyfetch@latest
