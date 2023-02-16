#!/bin/bash

# install vivaldi 
sudo zypper ar https://repo.vivaldi.com/archive/vivaldi-suse.repo
sudo zypper -n in vivaldi-stable

# install brave
sudo zypper -n install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper -n install brave-browser
