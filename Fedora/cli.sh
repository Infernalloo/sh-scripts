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
git clone https://github.com/Rosettea/Bunnyfetch
cd Bunnyfetch
go get -d ./...
go build -ldflags "-w -s" # ldflags make the binary smaller

# install pfetch
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch