local wezterm = require('wezterm')
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local config = wezterm.config_builder()

config.color_scheme = 'tokyonight_night'
config.default_prog = { 'pwsh', '-NoLogo' }
config.default_cwd = wezterm.home_dir
config.font = wezterm.font_with_fallback({
  { family = 'Fira Code' },
  { family = 'JetBrains Mono' },
  { family = 'Cascadia Code PL' },
})
config.font_size = 10
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.underline_position = -4
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
