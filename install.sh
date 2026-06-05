#!/usr/bin/env bash

# 🌌 AmberAbyss Universal Theme Installer
set -e

AMBER_GOLD='\033[0;33m'
RESET='\033[0m'

echo -e "${AMBER_GOLD}🌌 Initializing AmberAbyss Terminal Setup...${RESET}"

# 1. Cross-Platform Linux/Unix Configuration Deployment
if [ -f .Xresources ]; then
    echo " -> Copying .Xresources configurations to your home directory..."
    cat .Xresources >> ~/.Xresources
    if command -v xrdb >/dev/null 2>&1; then
        xrdb -merge ~/.Xresources
        echo " -> Merged color palette into active display server settings."
    fi
fi

# 2. iTerm2 Profile Download Link Confirmation
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e " -> ${AMBER_GOLD}Mac detected!${RESET} Your native iTerm2 JSON profile is saved in this directory."
    echo " -> Import 'profile.json' inside iTerm2 via Preferences -> Profiles -> Other Actions -> Import JSON Profile."
fi

echo -e "${AMBER_GOLD}✨ AmberAbyss installation successfully complete! Restart your terminal to see changes.${RESET}"
