#!/usr/bin/env sh

notifyMuted() {
        volume="$1"
        dunstify -h string:x-canonical-private-synchronous:audio "Muted" -h int:value:"$volume" -t 1500 --icon audio-volume-muted
}

notifyAudio() {
        volume="$1"
        ponymix is-muted && notifyMuted "$volume" && return

        if [ $volume -eq 0 ]; then
                notifyMuted "$volume"
        elif [ $volume -le 30 ]; then
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: [$volume%]" -h int:value:"$volume" -t 1500 --icon audio-volume-low
        elif [ $volume -le 70 ]; then
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: [$volume%]" -h int:value:"$volume" -t 1500 --icon audio-volume-medium
        else
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: [$volume%]" -h int:value:"$volume" -t 1500 --icon audio-volume-high
        fi
}

notifyBrightness() {
        brightness="$1"
        if [ $brightness -eq 0 ]; then
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: [$brightness%]" -h int:value:"$brightness" -t 1500 --icon display-brightness-off-symbolic
        elif [ $brightness -le 30 ]; then
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: [$brightness%]" -h int:value:"$brightness" -t 1500 --icon display-brightness-low-symbolic
        elif [ $brightness -le 70 ]; then
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: [$brightness%]" -h int:value:"$brightness" -t 1500 --icon display-brightness-medium-symbolic
        else
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: [$brightness%]" -h int:value:"$brightness" -t 1500 --icon display-brightness-high-symbolic
        fi
}

input=`cat /dev/stdin`

case "$1" in
        muted)
                volume=`ponymix get-volume`
                if [ "$input" -eq 0 ]
                then
                        notifyAudio "$volume"
                else
                        notifyMuted "$volume"
                fi
                ;;
        audio)
                notifyAudio "$input"
                ;;
        brightness)
                notifyBrightness "$input"
                ;;

        *)
                echo "Not the right arguments"
                echo "$1"
                exit 2
esac
