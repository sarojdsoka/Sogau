#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# Copy current wallpaper for gtklock
WALLPAPER_SRC="$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"
GTKLOCK_WALL="$HOME/.config/gtklock/current_wallpaper"

if [ -f "$WALLPAPER_SRC" ]; then
    cp "$WALLPAPER_SRC" "$GTKLOCK_WALL"
fi

# Ensure weather cache is up-to-date before locking
bash "$HOME/.config/hypr/UserScripts/WeatherWrap.sh" >/dev/null 2>&1

loginctl lock-session
