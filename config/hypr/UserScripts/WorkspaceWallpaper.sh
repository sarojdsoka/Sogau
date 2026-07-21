#!/usr/bin/env bash
wallpaper_dir="$HOME/Pictures/wallpapers"
wallpapers=(
  "luffy_gear5_minimal.jpg"
  "luffy_gear5_sun_god.jpg"
  "luffy_gear5_artwork_5k.jpg"
  "luffy_vs_kaido_gear5.jpg"
  "luffy_laughing_gear5.jpg"
  "luffy_intense_5k.jpg"
  "luffy_ace_sabo_trio.jpg"
  "one_piece_egghead.jpg"
  "robin_nico_5k.jpg"
  "sanji_roronoa_luffy_5k.jpg"
  "zoro_three_sword.jpg"
  "zoro_neon_amoled.jpg"
)

wallpaper_current="$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"

set_wallpaper() {
  local ws=$1
  local idx=$((ws - 1))
  if [ $idx -ge 0 ] && [ $idx -lt ${#wallpapers[@]} ]; then
    local wp="${wallpaper_dir}/${wallpapers[$idx]}"
    awww img "$wp"
    cp -f "$wp" "$wallpaper_current"
    wallust run -s "$wp" &>/dev/null
    waybar-msg cmd reload &>/dev/null || killall -SIGUSR2 waybar &>/dev/null || true
  fi
}

instance_dir=$(ls -d /run/user/1000/hypr/*/ 2>/dev/null | head -1)
socket="${instance_dir}.socket2.sock"

current_ws=$(hyprctl activeworkspace -j | jq -r '.id')
set_wallpaper "$current_ws"

if [ -S "$socket" ]; then
  nc -U "$socket" | while read -r line; do
    if [[ $line == workspace\>\>* ]]; then
      ws=${line#workspace>>}
      ws=${ws%%>>*}
      if [[ $ws =~ ^[0-9]+$ ]]; then
        set_wallpaper "$ws"
      fi
    fi
  done
fi
