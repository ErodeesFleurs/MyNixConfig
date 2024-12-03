# #!/bin/bash

# Current Theme
dir="$HOME/.config/rofi/themes/"
theme='style-1'

# [ -z "$bssid" ] && exit 1
# nmcli device wifi connect $bssid
# notify-send " WiFi Connected"

bssid=$(nmcli device wifi list | sed -n '1!P'| cut -b 9- | rofi -dmenu -theme ${dir}/${theme}.rasi -p " " -lines 10 | awk '{print $1}')
[ -z "$bssid" ] && exit 1
nmcli device wifi connect $bssid
notify-send "  WiFi Connected"