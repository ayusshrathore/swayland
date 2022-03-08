#!/bin/bash

if [ "$EUID" -eq 0 ]
    then echo "Do not run as root"
        exit
fi

mkdir -p $HOME/.config/

echo
echo "======> Installing ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.config/zsh/zsh-auto
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $HOME/.config/zsh/fsh

mkdir -p $HOME/.local/share/

echo "======> Installing Inter font"
echo
git clone https://github.com/ayush-rathore/inter-nerd-font $HOME/.local/share/fonts/

echo "======> Copying dotfiles"
echo

cp -frv \
	../.zshenv \
	$HOME/

cp -frv \
	./.config/* \
	$HOME/.config

echo "======> Dotfiles copied!"

cp -frv \
	Pictures \
	$HOME/

echo "======> Wallpapers copied!"
