# Sogau — Setup & Shortcuts

All shortcuts for the Sogau Hyprland theme in one place.

## Quick setup (theme + wallpapers)

```bash
cd ~/Sogau
./deploy.sh --link      # link configs to ~/.config (--copy for plain copy)
```

Wallpapers go in `~/Pictures/wallpapers/` (images + videos, subfolders allowed).

Then inside Hyprland:

| Key | What it does |
|-----|--------------|
| `SUPER T` | Global theme switcher (wallust themes via rofi) |
| `SUPER W` | Pick a wallpaper (saves it for next boot) |
| `CTRL ALT W` | Random wallpaper |
| `SUPER SHIFT W` | Wallpaper effects (blur, etc.) |
| `SUPER ALT R` | Refresh bar / menus / rofi / swaync after changes |

## Theme & colour

| Key | Action |
|-----|--------|
| `SUPER T` | Global theme switcher (wallust) |
| `SUPER ALT L` | Toggle dwindle / master layout |
| `SUPER SHIFT A` | Animations menu |
| `SUPER CTRL R` | Rofi theme selector |
| `SUPER CTRL SHIFT R` | Rofi theme selector v2 |
| `SUPER SHIFT O` | Change oh-my-zsh theme |
| `SUPER N` | Toggle night light (hyprsunset) |
| `SUPER ALT O` | Toggle blur |
| `SUPER CTRL O` | Toggle active-window opacity |

## Wallpapers

| Key | Action |
|-----|--------|
| `SUPER W` | Choose wallpaper (rofi grid, persists across reboot) |
| `SUPER SHIFT W` | Wallpaper effects |
| `CTRL ALT W` | Random wallpaper |
| `SUPER ALT R` | Refresh everything (apply palette) |

## Launchers & apps

| Key | Action |
|-----|--------|
| `SUPER D` | App launcher (rofi) |
| `SUPER Return` | Terminal (kitty) |
| `SUPER SHIFT Return` | Dropdown terminal (`SUPER Q` to close) |
| `SUPER E` | File manager (thunar) |
| `SUPER B` | Browser |
| `SUPER S` | Web search |
| `SUPER CTRL S` | Window switcher |
| `SUPER ALT V` | Clipboard manager |
| `SUPER ALT E` | Emoji menu |
| `SUPER ALT C` | Calculator |
| `SUPER SHIFT M` | Online music (rofi) |
| `SUPER A` | Desktop overview |
| `SUPER H` | This cheat sheet (rofi/yad popup) |
| `SUPER SHIFT K` | Search all keybinds |

## Apps & bar

| Key | Action |
|-----|--------|
| `SUPER CTRL ALT B` | Toggle waybar |
| `SUPER CTRL B` | Waybar styles menu |
| `SUPER ALT B` | Waybar layout menu |
| `SUPER SHIFT N` | Notification panel (swaync) |
| `SUPER SHIFT E` | Quick settings menu |

## Windows

| Key | Action |
|-----|--------|
| `SUPER Q` | Close active window |
| `SUPER SHIFT Q` | Kill active process |
| `SUPER SHIFT F` | Fullscreen |
| `SUPER CTRL F` | Maximize (fake fullscreen) |
| `SUPER SPACE` | Float / unfloat window |
| `SUPER ALT SPACE` | Float all windows |
| `SUPER SHIFT G` | Game mode (animations off) |
| `SUPER SHIFT F` | Fullscreen |
| `SUPER SHIFT + ←↑→↓` | Resize window |
| `SUPER CTRL + ←↑→↓` | Move window |
| `SUPER ALT + ←↑→↓` | Swap window |
| `SUPER + ←↑→↓` | Focus window |
| `SUPER CTRL Return` | Swap with master |
| `SUPER CTRL D` | Remove master |
| `SUPER I` | Add master |
| `SUPER SHIFT I` | Toggle split (dwindle) |
| `SUPER P` | Toggle pseudo (dwindle) |
| `SUPER M` | Split ratio 0.3 |
| `ALT Tab` | Cycle window / bring to top |
| `SUPER G` | Toggle group |
| `SUPER Tab` | Next group member |
| `SUPER SHIFT Tab` | Prev group member |
| `SUPER CTRL Tab` | Toggle active group |
| `SUPER CTRL H` | Move window out of group |
| `SUPER CTRL K` / `SUPER CTRL L` | Move window into group (left/right) |

## Workspaces

| Key | Action |
|-----|--------|
| `SUPER <1-0>` | Switch workspace |
| `SUPER SHIFT <1-0>` | Move window to workspace |
| `SUPER CTRL <1-0>` | Move window silently |
| `SUPER Tab` / `SUPER SHIFT Tab` | Next / previous workspace |
| `SUPER ,` `SUPER .` | Previous / next workspace |
| `SUPER mouse_wheel` | Scroll workspaces |
| `SUPER U` | Toggle special workspace |
| `SUPER SHIFT U` | Move window to special workspace |
| `SUPER SHIFT [ ]` | Move window to prev / next workspace |
| `SUPER CTRL F9-F12` | Move workspace to left/right/up/down monitor |

## Zoom

| Key | Action |
|-----|--------|
| `SUPER ALT mouse_down` | Zoom in |
| `SUPER ALT mouse_up` | Zoom out |

## System

| Key | Action |
|-----|--------|
| `CTRL ALT L` | Lock screen |
| `CTRL ALT P` | Power menu (wlogout) |
| `CTRL ALT Del` | Exit Hyprland |
| `XF86 Sleep` | Suspend |

## Screenshots

| Key | Action |
|-----|--------|
| `SUPER Print` | Screenshot now |
| `SUPER SHIFT Print` | Screenshot area (grim + slurp) |
| `SUPER CTRL Print` | Screenshot in 5s |
| `SUPER CTRL SHIFT Print` | Screenshot in 10s |
| `ALT Print` | Screenshot active window |
| `SUPER SHIFT S` | Screenshot region (swappy) |

## Volume / media keys

| Key | Action |
|-----|--------|
| `XF86AudioRaiseVolume` / `Lower` | Volume up / down |
| `ALT + volume keys` | Precise volume |
| `XF86AudioMicMute` | Toggle mic mute |
| `XF86AudioMute` | Toggle mute |
| `XF86AudioPlayPause` / `Prev` / `Next` / `Stop` | Media controls |

## Editor notes

- Full source of binds: `config/hypr/configs/Keybinds.conf`
- Your own overrides go in: `config/hypr/UserConfigs/UserKeybinds.conf`
- If you remap an existing bind, `unbind` it first in UserKeybinds.conf.