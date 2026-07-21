#!/usr/bin/env bash
set -euo pipefail

pkill -f "hyprctl subscribe" 2>/dev/null || true

toggle_waybar() {
  if hyprctl activewindow -j 2>/dev/null | jq -e '.fullscreen == 1 or .fullscreen == 2' >/dev/null 2>&1; then
    pkill -STOP waybar 2>/dev/null || true
  else
    pkill -CONT waybar 2>/dev/null || true
  fi
}

hyprctl subscribe 2>/dev/null | while read -r line; do
  case "$line" in
    *fullscreen*|*activewindow*|*closewindow*|*openwindow*|*movewindow*)
      sleep 0.15
      toggle_waybar
      ;;
  esac
done
