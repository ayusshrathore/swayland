#!/bin/bash
case $(wofi -d -L 6 -l 3 -W 100 --location=center \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Sleep
    Lock
    Cancel
EOF
) in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Sleep")
        systemctl suspend
        ;;
    "Lock")
        swaylock -f
        ;;
    "Log off")
        swaymsg exit
        ;;
esac
