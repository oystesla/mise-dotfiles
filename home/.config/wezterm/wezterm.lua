local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Spawn fish on launch
--config.default_prog = { '/run/current-system/sw/bin/fish', '-l' }

-- Appearance
config.enable_tab_bar = false
config.window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.initial_rows = 50
config.initial_cols = 150
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 14

return config
