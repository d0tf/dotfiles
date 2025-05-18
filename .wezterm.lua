local wezterm = require 'wezterm'

wezterm.on("gui-startup", function(cmd)
  local screen = wezterm.gui.screens().active
  local ratio = 0.4
  local width, height = screen.width * ratio, screen.height * ratio
  local tab, pane, window = wezterm.mux.spawn_window {
    position = {
      x = (screen.width - width) / 2,
      y = (screen.height - height) / 2,
      origin = 'ActiveScreen' }
  }
  window:gui_window():set_inner_size(width, height)
end)

local config = {
  default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' },
  enable_tab_bar = false,
  enable_scroll_bar = true,
  color_scheme = 'Moonfly (Gogh)',
  window_close_confirmation = 'NeverPrompt',
  window_background_opacity = 0.9,
  text_background_opacity = 0.35,
  font_size = 13.0,
  initial_rows = 24,
  font = wezterm.font("JetBrainsMonoNL Nerd Font"),
  initial_cols = 96,
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
    },
    {
      key = 'N',
      mods = 'ALT|SHIFT',
      action = wezterm.action.SpawnTab({ DomainName = "local" })
    }
  }
}

return config
