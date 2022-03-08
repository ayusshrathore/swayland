# Exec Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

# Wayland & Sway
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway
QT_QPA_PLATFORM=wayland

# Gnome-Keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
