#!/bin/bash

## Update system
sudo dnf update --refresh -y && sudo dnf upgrade -y

# Install base utilities
sudo dnf install dnf-utils util-linux-user -y

# Install rpm fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Terminal related
sudo dnf makecache --refresh
sudo dnf install alacritty exa vim neovim python3-neovim fish -y
chsh -s /bin/fish
sudo dnf install neofetch cmatrix lolcat -y
cd
curl -sS https://starship.rs/install.sh | sh
cd
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
cd -
git clone https://github.com/Rosettea/Bunnyfetch
cd Bunnyfetch
go get -d ./...
go build -ldflags "-w -s" # ldflags make the binary smaller
cd
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch
cd
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.3/bottom-0.9.3-1.x86_64.rpm
sudo rpm -i bottom-0.9.3-1.x86_64.rpm
cd
# Browsers
# Firefox
sudo dnf install firefox -y
# Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y
# Vivaldi
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable -y

# Others
# code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# to do in bash shell
cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
sudo dnf check-update && sudo dnf install code -y
# steam
sudo dnf install steam -y
# virtualbox
sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras
cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
[virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/36/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF
sudo dnf search virtualbox && sudo dnf install VirtualBox-7.0 -y

# Install flatpaks
sudo dnf upgrade --refresh -y
sudo dnf install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client -y
sudo flatpak install flathub com.usebottles.bottles

reboot