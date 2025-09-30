#!/bin/bash

# Shell
sudo pacman -Suy zsh starship
cp ./.zshrc ~
chsh -s /bin/zsh

# Fonts
sudo pacman -Suy noto-fonts noto-fonts-emoji nerd-fonts

# UI programms
sudo pacman -Suy hyprland hyprpaper kitty waybar
mkdir -vp ~/.config/{hypr,waybar}
cp -r ./hypr/* ~/.config/hypr
cp -r ./waybar/* ~/.config/waybar

# Dev
sudo pacman -Suy git github-cli nvim
gh auth login
gh auth setup-git
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
