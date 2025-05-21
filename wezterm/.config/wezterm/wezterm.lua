local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "Catppuccin Mocha"
-- config.font = wezterm.font("CodeNewRoman Nerd Font Mono")
config.font_size = 11
config.underline_thickness = 1

config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 4,
	bottom = 0,
}
-- return the configuration to wezterm
return config
