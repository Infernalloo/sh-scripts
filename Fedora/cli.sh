#!/bin/bash

# install bottom
sudo dnf install cargo -y
cargo install bottom --locked

# install neofetch
sudo dnf install neofetch -y

# install nitch
cd
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
cd -

# install bunnyfetch
sudo dnf install go -y
go install github.com/Rosettea/bunnyfetch@latest
