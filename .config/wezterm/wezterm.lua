require("format")
require("status")
require("event")

local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- keybinds
config.disable_default_key_bindings = true
config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables
config.leader = { key = ",", mods = "CTRL", timeout_milliseconds = 2000 }

-- colors
config.color_scheme = "Tokyo Night Storm"

-- font
config.font = require("wezterm").font("Firge35Nerd Console")
config.font_size = 15.0
config.window_frame = {
  font = wezterm.font({ family = "Firge35Nerd Console", weight = "Bold" }),
  font_size = 13.0,
}

-- display
config.window_background_opacity = 0.90

-- startup with full-screen mode
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

-- mouse binds
config.mouse_bindings = require("mousebinds").mouse_bindings

return config
