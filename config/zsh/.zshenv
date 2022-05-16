# Exporting variables
export TERMINAL=alacritty
export BROWSER=firefox
export EDITOR=micro
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# XDG base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ANDROID_SDK_HOME="$HOME/.config/android"
export GOPATH="$HOME/.local/share/go"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$HOME/.local/share/cargo"

export MOZ_ENABLE_WAYLAND=1

# For Android Studio
export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk

# For Gradle
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

# zsh config dir
export ZDOTDIR="$HOME/.config/zsh"

# ZSH History
export HISTFILE="$XDG_CONFIG_HOME/zsh/history"
export HISTSIZE=1000
export SAVEHIST=1000

# Micro
export MICRO_TRUECOLOR=1
