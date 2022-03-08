# Starship
eval "$(starship init zsh)"

# Neofetch on startup
neofetch --ascii ~/.config/neofetch/arch

# Source plugins
source ~/.config/zsh/zsh-auto/zsh-autosuggestions.zsh
source ~/.config/zsh/fsh/fast-syntax-highlighting.plugin.zsh

# Source Other files
source ~/.config/zsh/functions
source ~/.config/zsh/settings.zsh

# Aliases

# zshrc 
alias zrc='$EDITOR ~/.config/zsh/.zshrc'

# cd .config
alias cdcon='cd ~/.config/'

# Clear console
alias c='clear'

# Up a directory
alias ..='cd ..'

# ls commands
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Pacman & Yay
alias \
install='sudo pacman -S' \
remove='sudo pacman -Rns' \
update='yay -Syu && yay -Sc' \
clean='sudo pacman -Qdtq | sudo pacman -Rs -'

# Mounting Google Drive
alias mount='rclone mount Ayush: ~/drive'

# VS Code
alias code='code .'

# Micro
alias m='micro'

# Git
alias \
ga='git add' \
gd='git diff' \
gs='git status' \
gcm='git commit -m' \
gp='git push' \
gl='git pull' \
gc='git clone' \
gpo='git push origin' \
gco='git checkout' \
gcom='git checkout main' \
grao='git remote add origin' \
gm='git merge' \
gmnf='git merge --no-commit --no-ff' \
gr='git restore' \
grs='git restore --staged'

# Network Manager
alias \
nmcon='nmcli device wifi connect' \
nmls='nmcli device wifi list' \
nmst='nmcli device status'
