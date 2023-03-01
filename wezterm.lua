local wezterm = require 'wezterm'

return {
  font = wezterm.font {
    family = 'Fantasque Sans Mono',
  },
  font_size = 13,
  color_scheme = "SpaceGray Eighties",
  keys = {
    -- This will create a new split and run your default program inside it
    {
      key = ')',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = '(',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitPane {  direction = 'Right' },
    }
  },
}
