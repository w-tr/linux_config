-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("UbuntuMono Nerd Font Mono")
config.font_size = 14
config.window_background_opacity = 0.9 -- Consider blur.
-- config.macos_window_background_blur = 20
config.text_background_opacity = 1.0
config.use_fancy_tab_bar = true
config.colors = {
	tab_bar = {
		active_tab =  {
			bg_color = "#7A479E",
			fg_color = "#ebdbb2",
		},
		inactive_tab = {
			bg_color = "#3c3836",
			fg_color = "#ebdbb2",
		},
	},
	background = "#000000"
 }

-- config.enable_wayland = true
-- config.use_system_cursor = true

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
