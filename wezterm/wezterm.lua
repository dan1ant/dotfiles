local wezterm = require('wezterm')
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local config = wezterm.config_builder() or {}

config.color_scheme = 'Kanagawa (Gogh)'
config.default_prog = { 'pwsh', '-NoLogo' }
config.default_cwd = wezterm.home_dir
config.font = wezterm.font_with_fallback({ family = 'JetBrains Mono' })
config.font_rules = {
  {
    intensity = 'Normal',
    italic = false,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Regular' }),
  },
  {
    intensity = 'Normal',
    italic = true,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Regular', italic = 'Italic' }),
  },
  {
    intensity = 'Bold',
    italic = false,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Bold' }),
  },
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Bold', italic = 'Italic' }),
  },
  {
    intensity = 'Half',
    italic = false,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Light' }),
  },
  {
    intensity = 'Half',
    italic = true,
    font = wezterm.font_with_fallback({ family = 'JetBrains Mono', weight = 'Light', italic = 'Italic' }),
  },
}
config.font_size = 10
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
