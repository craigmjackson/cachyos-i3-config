#!/usr/bin/env bash
#
# Install dependencies for this i3 + dmenu setup on CachyOS (Arch-based).
#
set -euo pipefail

if ! command -v pacman >/dev/null 2>&1; then
    echo "This script targets CachyOS/Arch (pacman). Aborting." >&2
    exit 1
fi

# Core packages referenced by ~/.config/i3/config
sudo pacman -Syu --needed --noconfirm \
    dmenu \
    i3-wm \
    i3status \
    xorg-xrandr \
    dex \
    xss-lock \
    networkmanager \
    network-manager-applet \
    pipewire-pulse \
    ttf-dejavu

# Optional: build dependencies for compiling dmenu from source
# sudo pacman -S --needed --noconfirm base-devel libx11 libxinerama libxft freetype2 fontconfig

echo "Dependencies installed."
