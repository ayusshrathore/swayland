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

cp -frv \
	../alacritty \
	../mako \
	../sway \
	../swaylock \
	../waybar \
	../wofi \
	../../.config/

cp -frv \
	../images/wallpaper.jpg \
	../images/lock.png \
	../../Pictures/

echo 
echo "Swayland installed! You can now reboot and use Swayland."
