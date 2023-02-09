#!/bin/bash

# install fzf
sudo dnf install fzf ripgrep -y

# install jerry
sudo curl -sL github.com/justchokingaround/jerry/raw/main/jerry.sh -o /usr/local/bin/jerry && sudo chmod +x /usr/local/bin/jerry
sudo chmod +x /usr/local/bin/jerry

# install ani-cli
sudo dnf copr enable derisis13/ani-cli -y
sudo dnf install ani-cli -y
