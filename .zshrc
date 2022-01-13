# Exec Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

export ZSH="/home/$USER/.oh-my-zsh"

export REACT_EDITOR=code

# Oh-my-zsh Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Starting Starship
eval "$(starship init zsh)"

# Aliases
	alias c='clear'

	alias b='btop'

	alias update='yay -Syu && yay -Sc'

	alias apps='sudo pacman -Qe'

	alias remove='sudo pacman -R'

	alias install='sudo pacman -S'

	alias mount='rclone mount Ayush: ~/drive'

	alias clean='sudo pacman -Qdtq | sudo pacman -Rs -'

	alias code='code .'

	alias cvpn='protonvpn-cli connect'

	alias dvpn='protonvpn-cli disconnect'

	alias gmnf='git merge --no-ff'

	alias sws='cp -r .config/sway .config/waybar .config/alacritty .config/swaylock .config/mako .config/wofi GitHub/swayland'

	alias \
		nmcon='nmcli device wifi connect' \
		nmls='nmcli device wifi list' \
		nmst='nmcli device status'