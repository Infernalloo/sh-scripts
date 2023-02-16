#!/bin/bash

# install vivaldi 
sudo zypper ar https://repo.vivaldi.com/archive/vivaldi-suse.repo
sudo zypper -n in vivaldi-stable

# install brave
sudo zypper -n install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper -n install brave-browser

# install opera
sudo zypper ref
sudo zypper -n install opera
# install edge
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper ar https://packages.microsoft.com/yumrepos/edge microsoft-edge-beta
sudo zypper refresh
sudo zypper -n install microsoft-edge-beta
