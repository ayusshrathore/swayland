#!/bin/bash
case $(wofi -d -w 3 -H 100 --location=center --conf=$HOME/.config/wofi/scripts/config --style=$HOME/.config/wofi/scripts/power/style.css \
		<< EOF | sed 's/^ *//'
 
 
 
EOF
) in
    "")
        systemctl poweroff
        ;;
    "")
        systemctl reboot
        ;;
    "")
        swaylock -f
        ;;
esac
