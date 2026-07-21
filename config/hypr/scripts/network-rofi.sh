#!/bin/bash

connected=$(nmcli -t -f SSID device wifi | grep -v '^--$' | head -1)
ssids=()
lines=()

while IFS=: read -r ssid sec sig bars; do
  [ -z "$ssid" ] || [ "$ssid" = "--" ] && continue
  ssids+=("$ssid")
  icon="󰤨"
  if (( sig < 80 )); then icon="󰤥"; fi
  if (( sig < 60 )); then icon="󰤢"; fi
  if (( sig < 40 )); then icon="󰤟"; fi
  if (( sig < 20 )); then icon="󰤯"; fi
  lock=""
  [ "$sec" != "--" ] && [ -n "$sec" ] && lock=""
  mark="  "
  [ "$ssid" = "$connected" ] && mark="󰁨"
  lines+=("$mark $icon $ssid  $sig% $lock")
done < <(nmcli -t -f SSID,SECURITY,SIGNAL,BARS device wifi list)

[ ${#ssids[@]} -eq 0 ] && rofi -e "No networks found" && exit

fmt=$(printf "%s\n" "${lines[@]}")
sel=$(echo "$fmt" | rofi -dmenu -i -p "    WiFi" -format i \
  -theme "$HOME/.config/rofi/config-network.rasi")

[ -z "$sel" ] && exit
ssid="${ssids[$sel]}"

if nmcli -t -f NAME connection show | grep -qxF "$ssid"; then
  notify-send "WiFi" "Connecting to $ssid..."
  nmcli connection up "$ssid"
else
  pass=$(rofi -dmenu -password -i -p "    Password for $ssid" \
    -theme "$HOME/.config/rofi/config-network-pw.rasi")
  [ -z "$pass" ] && exit
  notify-send "WiFi" "Connecting to $ssid..."
  nmcli device wifi connect "$ssid" password "$pass"
fi
