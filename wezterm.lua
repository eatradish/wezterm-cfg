local wezterm = require 'wezterm'
local act = wezterm.action

return {
  enable_scroll_bar = true,
  scrollback_lines = 20000,
  colors = {
    scrollbar_thumb = '#787878'
  },
  font = wezterm.font_with_fallback {
    'FantasqueSansM Nerd Font',
    'Noto Sans Mono CJK SC'
  },
  font_size = 13,
  color_scheme = "Afterglow",
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
    },
  },
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'NONE',
      action = act.Nop
    },
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'CTRL',
      action = act.OpenLinkAtMouseCursor,
    }
  }
}
