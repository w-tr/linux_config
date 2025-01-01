-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("UbuntuMono Nerd Font Mono")
config.font_size = 14

-- config.enable_wayland = true
-- config.use_system_cursor = true
-- keep adding config stuff below
--
config.leader = {
	key = "\\",
	mods = "CTRL",
	timeout_milliseconds = 2000,
}
config.keys = {
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateCopyMode,
	},
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action.TogglePaneZoomState,
	},
}
return config
