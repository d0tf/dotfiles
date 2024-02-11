local wezterm = require 'wezterm'

local config = {
  default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' },
  enable_tab_bar = false,
  enable_scroll_bar = true,
  window_background_opacity = 0.95,
  text_background_opacity = 0.35,
  color_scheme = 'tokyonight_night',
  keys = {
    {
      key = '+',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '_',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'H',
      mods = 'ALT|SHIFT',
      action = wezterm.action.AdjustPaneSize({ "Left", 5 })
    },
    {
      key = 'L',
      mods = 'ALT|SHIFT',
      action = wezterm.action.AdjustPaneSize({ "Right", 5 })
    },
    {
      key = 'K',
      mods = 'ALT|SHIFT',
      action = wezterm.action.AdjustPaneSize({ "Up", 5 })
    },
    {
      key = 'J',
      mods = 'ALT|SHIFT',
      action = wezterm.action.AdjustPaneSize({ "Down", 5 })
    },
    {
      key = 'h',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection("Left")
    },
    {
      key = 'l',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection("Right")
    },
    {
      key = 'k',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection("Up")
    },
    {
      key = 'j',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection("Down")
    },
    {
      key = 'U',
      mods = 'ALT|SHIFT',
      action = wezterm.action.SpawnTab({ DomainName = "WSL:Ubuntu" })
    }
  }
}

return config
