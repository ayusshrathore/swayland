#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi

echo
echo "======> Installing Swayland"
echo 

pacman -Sy --needed $(<packages.txt)

echo "=======> Copying dotfiles"

cp -frv \
	../alacritty \
	../dunst \
	../sway \
	../swaylock \
	../waybar \
	../wofi \
	$HOME/.config/

cp -frv \
	../wallpapers/* \
	$HOME/Pictures/Wallpapers/

echo 
echo "Swayland installed! You can now reboot and use Swayland."
