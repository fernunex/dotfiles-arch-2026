# Archomen Hyprland Keybind Cheat Sheet

This is the custom Hyprland keybind cheat sheet for Archomen.

## Main modifier

`SUPER` = Windows key.

## Core apps

| Keybind | Action |
|---|---|
| `SUPER + Q` | Open Kitty terminal |
| `SUPER + R` | Open Fuzzel launcher |
| `SUPER + C` | Close active window |
| `SUPER + L` | Lock screen with Hyprlock |
| `SUPER + N` | Open/close SwayNC notification center |

## Desktop toggles

| Keybind | Action |
|---|---|
| `SUPER + SHIFT + B` | Toggle Waybar |
| `SUPER + SHIFT + W` | Toggle video wallpaper |
| `SUPER + SHIFT + V` | Clear current clipboard, if enabled |

## Window basics

| Keybind | Action |
|---|---|
| `SUPER + F` | Toggle fullscreen |
| `SUPER + V` | Toggle floating/tiled window |
| `SUPER + Left Click` | Move window with mouse |
| `SUPER + Right Click` | Resize window with mouse |

## Focus windows

| Keybind | Action |
|---|---|
| `SUPER + Left` | Focus window to the left |
| `SUPER + Right` | Focus window to the right |
| `SUPER + Up` | Focus window above |
| `SUPER + Down` | Focus window below |

## Move tiled windows

| Keybind | Action |
|---|---|
| `SUPER + SHIFT + Left` | Move tiled window left |
| `SUPER + SHIFT + Right` | Move tiled window right |
| `SUPER + SHIFT + Up` | Move tiled window up |
| `SUPER + SHIFT + Down` | Move tiled window down |

## Swap windows

| Keybind | Action |
|---|---|
| `SUPER + ALT + Left` | Swap active window left |
| `SUPER + ALT + Right` | Swap active window right |
| `SUPER + ALT + Up` | Swap active window up |
| `SUPER + ALT + Down` | Swap active window down |

## Resize active window

Hold the keys to resize continuously.

| Keybind | Action |
|---|---|
| `SUPER + CTRL + Left` | Make active window narrower |
| `SUPER + CTRL + Right` | Make active window wider |
| `SUPER + CTRL + Up` | Make active window shorter |
| `SUPER + CTRL + Down` | Make active window taller |

## Move floating windows precisely

Works best after making a window floating with `SUPER + V`.

| Keybind | Action |
|---|---|
| `SUPER + ALT + SHIFT + Left` | Move floating window left |
| `SUPER + ALT + SHIFT + Right` | Move floating window right |
| `SUPER + ALT + SHIFT + Up` | Move floating window up |
| `SUPER + ALT + SHIFT + Down` | Move floating window down |

## Floating presets

| Keybind | Action |
|---|---|
| `SUPER + ALT + C` | Center floating window |
| `SUPER + ALT + Enter` | Medium floating window, centered |
| `SUPER + ALT + M` | Large floating window, centered |
| `SUPER + ALT + P` | Pin floating window on all workspaces |

## Automatic window arrangements

| Keybind | Action |
|---|---|
| `SUPER + A` | Cycle automatic window arrangements |
| `SUPER + SHIFT + A` | Restore normal tiled layout |

`SUPER + A` cycles through:

1. Grid
2. Main left + stack right
3. Stack left + main right
4. Two columns
5. Normal tiled mode

## Scratchpad / minimize-like behavior

Hyprland does not use Windows-style minimize. The scratchpad is the better tiling-window-manager version.

| Keybind | Action |
|---|---|
| `SUPER + SHIFT + S` | Send active window to scratchpad |
| `SUPER + S` | Show/hide scratchpad |

## Grouped / tabbed windows

| Keybind | Action |
|---|---|
| `SUPER + G` | Create/remove grouped window mode |
| `SUPER + Tab` | Go to next tab/window in group |
| `SUPER + SHIFT + Tab` | Go to previous tab/window in group |
| `SUPER + SHIFT + G` | Remove active window from group |

## Workspaces

| Keybind | Action |
|---|---|
| `SUPER + 1` | Go to workspace 1 |
| `SUPER + 2` | Go to workspace 2 |
| `SUPER + 3` | Go to workspace 3 |
| `SUPER + 4` | Go to workspace 4 |
| `SUPER + 5` | Go to workspace 5 |
| `SUPER + 0` | Go to workspace 10 |

## Move windows to workspaces

| Keybind | Action |
|---|---|
| `SUPER + SHIFT + 1` | Move active window to workspace 1 |
| `SUPER + SHIFT + 2` | Move active window to workspace 2 |
| `SUPER + SHIFT + 3` | Move active window to workspace 3 |
| `SUPER + SHIFT + 4` | Move active window to workspace 4 |
| `SUPER + SHIFT + 5` | Move active window to workspace 5 |
| `SUPER + SHIFT + 0` | Move active window to workspace 10 |

## Laptop function/media keys

| Key | Action |
|---|---|
| Brightness Up | Increase brightness |
| Brightness Down | Decrease brightness |
| Volume Up | Increase volume |
| Volume Down | Decrease volume |
| Mute | Toggle audio mute |
| Mic Mute | Toggle microphone mute |
| Play/Pause | Play or pause media |
| Next | Next media track |
| Previous | Previous media track |
| Stop | Stop media |

## Useful commands

Show all active Hyprland keybinds:

```bash
hyprctl binds
```

Show only bind lines from the config:

```bash
command grep -nE "^\s*bind" ~/.config/hypr/hyprland.conf
```

Reload Hyprland after editing config:

```bash
hyprctl reload
```

Edit Hyprland config:

```bash
nano ~/.config/hypr/hyprland.conf
```

## Dotfiles commands

After changing keybinds:

```bash
cd ~/dotfiles
git add -A
git commit -m "Update Hyprland keybinds"
git push
```
