#!/usr/bin/env bash

set -e

cd "$HOME/dotfiles"

stow -v -t "$HOME" kitty
stow -v -t "$HOME" fuzzel
stow -v -t "$HOME" starship
stow -v -t "$HOME" zsh
stow -v -t "$HOME" scripts
stow -v -t "$HOME" hypr
stow -v -t "$HOME" waybar
stow -v -t "$HOME" gtk
stow -v -t "$HOME" qt

echo "Dotfiles stowed successfully."
