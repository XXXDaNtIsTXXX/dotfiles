local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
--- Use config builder if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end

--- Settings
config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font_with_fallback({
	{ family = "IosevkaTermNerdFontMono", scale = 0.9 },
})
config.window_background_opacity = 1.0
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 10000
config.default_workspace = "Space"

--- Keys
config.leader = { key = "^", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {

	{ key = "c", mods = "LEADER", action = act.ActivateCopyMode },

	--- Pane keys
	{ key = "-", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "|", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
}
return config
