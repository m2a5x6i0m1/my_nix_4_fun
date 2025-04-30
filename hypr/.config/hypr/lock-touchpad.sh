#!/bin/bash

CONFIG_FILE="$HOME/.config/hypr/hyprland.conf"

# Check if the touchpad is currently enabled or disabled
enabled=$(grep -o "enabled\s*=\s*[01]" "$CONFIG_FILE")

# Toggle the touchpad state
if [ "$enabled" == "enabled = 0" ]; then
  sed -i "s/enabled\s*=\s*0/enabled = 1/" "$CONFIG_FILE"
  state="enabled"
else
  sed -i "s/enabled\s*=\s*1/enabled = 0/" "$CONFIG_FILE"
  state="disabled"
fi

hyprctl reload config-only
