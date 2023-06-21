#!/bin/bash

## Browsers ##

# Firefox
sudo apt install -y firefox

# Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update -y && sudo apt install vivaldi-stable -y

# Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


# Opera
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2
wget -O- https://deb.opera.com/archive.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/opera.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera.list
sudo apt update
sudo apt install opera-stable

# Librewolf
# sudo apt update -y && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates
# distro=$(if echo " una vanessa focal jammy bullseye vera uma" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
# wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
# sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
# Types: deb
# URIs: https://deb.librewolf.net
# Suites: $distro
# Components: main
# Architectures: amd64
# Signed-By: /usr/share/keyrings/librewolf.gpg
# EOF
# sudo apt update -y
# sudo apt install librewolf -y
