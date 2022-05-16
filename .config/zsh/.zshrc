# Starship
eval "$(starship init zsh)"

# Neofetch on startup
neofetch

# Source plugins
source ~/.config/zsh/zsh-auto/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax/zsh-syntax-highlighting.zsh

# Source Other files
source ~/.config/zsh/functions
source ~/.config/zsh/settings.zsh

# Aliases

# zshrc 
alias zrc='$EDITOR ~/.config/zsh/.zshrc'

# cd .config
alias cdc='cd ~/.config/'

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
alias lst='l --sort=time'

# rm commands
alias rf='rm -rf'

# Pacman & Yay
alias pacin='sudo pacman -S' 
alias pacrem='sudo pacman -Rns' 
alias pacup='sudo pacman -Syu && sudo pacman -Sc' 
alias yayup='yay -Syu && yay -Sc' 
alias pacclean='sudo pacman -Qdtq | sudo pacman -Rs -'

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
