#!/bin/bash

# install neofetch
sudo zypper -n install neofetch

# install pfetch
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin
ls -l /usr/local/bin/pfetch/

# install nitch
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
