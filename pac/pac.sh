#!/bin/bash

# Update system
sudo pacman -Syu --noconfirm

# base utilities
sudo pacman -S base base-devel git wget curl gpg --noconfirm

# Install aur helpers
cd
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
cd
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd

# Terminal related
sudo pacman -S eza vim neovim alacritty --noconfirm
sudo pacman -S neofetch bottom cmatrix asciiquarium lolcat --noconfirm
pikaur -S bunnyfetch pfetch nitch --noconfirm
pikaur -S ttf-jetbrains-mono-git --noconfirm

# Browsers
sudo pacman -S firefox --noconfirm
sudo pacman -S vivaldi vivaldi-ffmpeg-codecs --noconfirm
pikaur -S brave --noconfirm

# Others
# steam
sudo pacman -S steam --noconfirm
# wine dependencies
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
# amd drivers
sudo pacman -S --needed lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
# code
pikaur -S visual-studio-code-bin --noconfirm

# Flatpak
sudo pacman -S flatpak --noconfirm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.usebottles.bottles -y
