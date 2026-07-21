#!/usr/bin/env bash
set -euo pipefail

# Sogau dotfiles deploy script
# Usage: ./deploy.sh [--link|--copy]

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_SRC="$DOTFILES_DIR/config"
CONFIG_DST="$HOME/.config"

mode="${1:---link}"

deploy() {
    local action="$1"
    find "$CONFIG_SRC" -type f | while read -r src; do
        local rel="${src#"$CONFIG_SRC"/}"
        local dst="$CONFIG_DST/$rel"
        mkdir -p "$(dirname "$dst")"
        if [ "$action" = "link" ]; then
            [ -f "$dst" ] && [ ! -L "$dst" ] && mv "$dst" "${dst}.bak"
            ln -sf "$src" "$dst"
        else
            cp -r "$src" "$dst"
        fi
        echo "  $rel"
    done
    echo "Done."
}

echo "Deploying dotfiles ($mode)..."
case "$mode" in
    --link)  deploy link  ;;
    --copy)  deploy copy  ;;
    *)
        echo "Usage: $0 [--link|--copy]"
        exit 1
        ;;
esac
