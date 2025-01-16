local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'BirdsOfParadise'

config.force_reverse_video_cursor = true

-- Setting the font
config.font = wezterm.font 'JetBrains Mono'

-- and finally, return the configuration to wezterm
return config
