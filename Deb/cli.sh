#!/bin/bash

# installs bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
sudo dpkg -i bottom_0.6.8_amd64.deb
sudo apt install ./bottom_0.6.8_amd64.deb -y

# install neofetch
sudo apt install neofetch -y

# install nitch
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh

# install pfetch
git clone https://github.com/dylanaraps/pfetch.git
sudo install pfetch/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch

# install bunnyfetch
sudo apt install golang -y
go install github.com/Rosettea/bunnyfetch@latest

# install cmatrix
sudo apt install cmatrix -y

# install asciiquarium
sudo apt-get install libcurses-perl
sudo apt-get install build-essential
cd /tmp
wgettar -zxvf Term-Animation-2.6.tar.gz
cd Term-Animation-2.6/
perl Makefile.PL && make && make test
sudo make install
cd /tmp
wget https://robobunny.com/projects/asciiquarium/asciiquarium.tar.gz
tar -zxvf asciiquarium.tar.gz
cd asciiquarium_1.1/
sudo cp asciiquarium /usr/local/bin
sudo chmod 0755 /usr/local/bin/asciiquarium

# install lolcat
sudo apt install lolcat -y