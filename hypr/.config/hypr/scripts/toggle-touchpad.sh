#!/usr/bin/env bash

HYPRLAND_DEVICE="$1"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR="/run/user/$(id -u)"
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
	printf "true" >"$STATUS_FILE"

	# notify-send -u normal "Enabling Touchpad"

	hyprctl keyword "device[$HYPRLAND_DEVICE]:enabled" true
}

disable_touchpad() {
	printf "false" >"$STATUS_FILE"

	# notify-send -u normal "Disabling Touchpad"

	hyprctl keyword "device[$HYPRLAND_DEVICE]:enabled" false
}

if ! [ -f "$STATUS_FILE" ]; then
	disable_touchpad
else
	if [ "$(cat "$STATUS_FILE")" = "true" ]; then
		disable_touchpad
	elif [ "$(cat "$STATUS_FILE")" = "false" ]; then
		enable_touchpad
	fi
fi
