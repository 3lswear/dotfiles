local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetBrains Mono"),
  font_size = 13,
  dpi = 144.0,
  window_background_opacity = 0.8,

  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,

  enable_scroll_bar = true,

  initial_rows = 24,
  initial_cols = 104,

  -- color_scheme = "Batman",
}

