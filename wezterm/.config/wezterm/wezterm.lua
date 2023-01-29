local wezterm = require 'wezterm';
return {
  -- alternate_buffer_wheel_scroll_speed = 10,
  font = wezterm.font("JetBrains Mono"),
  font_size = 12,
  -- dpi = 144.0,
  window_background_opacity = 0.9,

  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,

  enable_scroll_bar = true,

  initial_rows = 24,
  initial_cols = 104,
  keys = {
    {key="w", mods="CTRL | SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
    {key="\"", mods="CTRL | SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="%", mods="CTRL | SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
--splits navigation
    {key="{", mods="CTRL | SHIFT", action=wezterm.action{ActivatePaneDirection="Next"}},
    {key="}", mods="CTRL | SHIFT", action=wezterm.action{ActivatePaneDirection="Prev"}},
--tabs
    {key="LeftArrow", mods="CTRL | SHIFT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="RightArrow", mods="CTRL | SHIFT", action=wezterm.action{ActivateTabRelative=1}},

	{ key = '{', mods = 'SHIFT|ALT', action = wezterm.action.MoveTabRelative(-1) },
    { key = '}', mods = 'SHIFT|ALT', action = wezterm.action.MoveTabRelative(1) },
  },
    window_padding = {
    left = '1cell',
    right = '1.5cell',
    top = '0.5cell',
    bottom = '0.5cell',
  },
  colors = {
	  scrollbar_thumb = 'gray'
  },
  switch_to_last_active_tab_when_closing_tab = true,
  enable_wayland = true,
  scrollback_lines = 10000,


  -- color_scheme = "Batman",
}

