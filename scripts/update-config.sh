# zsh config files
cp -frv $HOME/.config/zsh/functions ../.config/zsh/
cp -frv $HOME/.config/zsh/settings.zsh ../.config/zsh/
cp -frv $HOME/.config/zsh/.zshrc ../.config/zsh/
cp -frv $HOME/.config/zsh/.zshenv ../.config/zsh/
cp -frv $HOME/.config/zsh/.zprofile ../.config/zsh/

# copy config files
cp -frv \
	$HOME/.config/alacritty \
	$HOME/.config/btop \
	$HOME/.config/dunst \
	$HOME/.config/feh \
	$HOME/.config/fontconfig \
	$HOME/.config/gtk-3.0 \
	$HOME/.config/lsd \
	$HOME/.config/micro/*.json \
	$HOME/.config/mpv \
	$HOME/.config/neofetch \
	$HOME/.config/sway \
	$HOME/.config/swaylock \
	$HOME/.config/waybar \
	$HOME/.config/wofi \
	$HOME/.config/yay \
	$HOME/.config/starship.toml \
	../.config/
