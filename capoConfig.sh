#!/bin/bash
echo "Run this script in the home directory"
sleep 3

# Install Programs --Pacman--
sudo pacman --noconfirm -Sy awesome
sudo pacman --noconfirm -Sy xcompmgr
yay --noconfirm -Sy st-luke-git

#Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Github stuff

git clone https://github.com/pretzelcow/capoConfig.git && cd capoConfig

# Make rc.lua config directory
mkdir ~/.config && mkdir ~/.config/awesome

# Copy the files
cp .xinitrc ~/
cp .xprofile ~/
cp rc.lua ~/.config/awesome/

# Delete folder
cd ~/
sudo rm -r ~/capoConfig
