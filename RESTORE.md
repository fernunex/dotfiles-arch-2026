# Restore Archomen Dotfiles

This repo contains my Arch Linux + Hyprland dotfiles.

## 1. Install base tools

```bash
sudo pacman -S --needed git stow
```

## 2. Clone repo

```bash
git clone git@github.com:fernunex/dotfiles-arch-2026.git ~/dotfiles
cd ~/dotfiles
```
## 3. Install official Arch packages

```bash
sudo pacman -S --needed - < packages/pacman-native.txt
```

## 4. Install AUR helper: paru

If `paru` is not installed:

```bash
cd /tmp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## 5. Install AUR packages

```bash
paru -S --needed - < ~/dotfiles/packages/aur.txt
```

## 6. Stow dotfiles

```bash
cd ~/dotfiles
./stow-all.sh
```

## 7. Reload Hyprland

```bash
hyprctl reload
```

## 8. Restore notes

Main managed configs:

- Hyprland: `~/.config/hypr`
- Waybar: `~/.config/waybar`
- Kitty: `~/.config/kitty`
- Fuzzel: `~/.config/fuzzel`
- Zsh: `~/.zshrc`
- Starship: `~/.config/starship.toml`
- Scripts: `~/.local/bin`
- GTK/Qt theme configs

## 9. Useful commands

Update package manifests after installing new packages:

```bash
cd ~/dotfiles
pacman -Qqen > packages/pacman-native.txt
pacman -Qqem > packages/aur.txt
git add packages
git commit -m "Update package manifests"
git push
```

Stow all configs again:

```bash
cd ~/dotfiles
./stow-all.sh
```

Unstow all configs:

```bash
cd ~/dotfiles
./unstow-all.sh
```

Check Git status:

```bash
cd ~/dotfiles
git status
```

## 10. Important warning

Do not blindly overwrite live configs. If restoring on an existing system, back up current configs first:

```bash
mkdir -p ~/dotfiles-restore-backup
cp -a ~/.config/hypr ~/dotfiles-restore-backup/hypr 2>/dev/null || true
cp -a ~/.config/waybar ~/dotfiles-restore-backup/waybar 2>/dev/null || true
cp -a ~/.config/kitty ~/dotfiles-restore-backup/kitty 2>/dev/null || true
cp -a ~/.config/fuzzel ~/dotfiles-restore-backup/fuzzel 2>/dev/null || true
cp -a ~/.zshrc ~/dotfiles-restore-backup/zshrc 2>/dev/null || true
```
