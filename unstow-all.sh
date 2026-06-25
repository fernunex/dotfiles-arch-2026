#!/usr/bin/env bash

set -e

cd "$HOME/dotfiles"

stow -D -v -t "$HOME" kitty
stow -D -v -t "$HOME" fuzzel
stow -D -v -t "$HOME" starship
stow -D -v -t "$HOME" zsh
stow -D -v -t "$HOME" scripts
stow -D -v -t "$HOME" hypr
stow -D -v -t "$HOME" waybar
stow -D -v -t "$HOME" gtk
stow -D -v -t "$HOME" qt

echo "Dotfiles unstowed successfully."
