local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

config.color_scheme = "Catppuccin Mocha"

config.cursor_thickness = 2
config.underline_thickness = 5

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.force_reverse_video_cursor = true

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

return config
