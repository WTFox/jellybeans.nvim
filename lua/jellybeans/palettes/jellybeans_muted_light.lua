local Util = require("jellybeans.util")

---@class Palette
local palette = {
  foreground = "#2d2c2a", -- Muted dark foreground
  background = "#f7f3eb", -- Muted paper-like background

  grey = "#787775", -- Less saturated grey
  grey_one = "#ebe7df", -- Muted light paper
  grey_two = "#504c47", -- Muted dark grey
  grey_three = "#dcd8d0", -- Muted light grey
  regent_grey = "#777f88", -- Desaturated blue-grey
  scorpion = "#5f5f5d", -- Desaturated grey
  cod_grey = "#fdfdfa", -- Muted white
  tundora = "#3f3e3c", -- Muted dark
  zambezi = "#5c5650", -- Muted brown-grey
  silver_rust = Util.darken("#65615f", 0.8), -- Muted grey-brown
  silver = "#c0c0bd", -- Desaturated silver
  alto = "#47463f", -- Muted dark
  gravel = "#d0cdc6", -- Muted light grey
  boulder = "#76766f", -- Muted grey
  cocoa_brown = Util.lighten("#c9b99a", 0.6), -- Muted tan
  grey_chateau = "#4f565d", -- Muted blue-grey
  bright_grey = "#e7e5e0", -- Muted light grey
  shuttle_grey = "#8e989f", -- Muted steel blue
  mine_shaft = Util.lighten("#c9b99a", 0.5), -- Muted tan
  temptress = "#ffe8e5", -- Muted pink
  bayoux_blue = "#536271", -- Muted blue-grey
  total_white = "#0f0e0d", -- Near-black
  total_black = "#faf8f3", -- Off-white paper
  cadet_blue = "#4e555c", -- Desaturated blue-grey

  perano = "#334a84", -- Muted blue
  wewak = "#835a6d", -- Muted mauve
  mantis = "#4a6335", -- Muted green
  raw_sienna = "#8c594a", -- Muted terracotta
  highland = "#567553", -- Muted moss green
  hoki = "#475b68", -- Muted blue-grey
  green_smoke = "#6d7f59", -- Muted sage
  costa_del_sol = "#555e3f", -- Muted olive
  biloba_flower = "#655683", -- Muted lavender
  morning_glory = "#3c5971", -- Muted navy
  goldenrod = "#987b40", -- Muted gold
  ship_cove = "#445987", -- Muted blue
  koromiko = "#a07542", -- Muted bronze
  brandy = "#7f7042", -- Muted olive-gold
  old_brick = "#913a34", -- Muted brick red
  dark_blue = "#2e2e87", -- Muted navy
  ripe_plum = "#4f205a", -- Muted plum
  casal = "#35635d", -- Muted teal
  purple = "#542258", -- Muted purple
  tea_green = "#a5b394", -- Muted sage
  dell = "#4c5e34", -- Muted forest green
  calypso = "#3c5884", -- Muted steel blue
}

palette.error = "#b84949" -- Muted red
palette.warning = "#9a7345" -- Muted amber
palette.info = "#3a6f8c" -- Muted blue
palette.hint = palette.raw_sienna -- Muted tan
palette.ok = "#4d7134" -- Muted green

palette.cursor_line = {
  bg = Util.darken(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = "#222120",
}

palette.git = {
  add = { fg = palette.ok },
  delete = { fg = palette.error },
  change = { fg = palette.info },
  text = { fg = palette.hint },
}

palette.diag = {
  error = palette.error,
  warning = palette.warning,
  info = palette.info,
  hint = palette.hint,
  ok = palette.ok,
}

palette.visual = palette.cocoa_brown
palette.none = "NONE"

palette.float_bg = palette.grey_three
palette.float_border = palette.tundora

return {
  name = "jellybeans_muted_light",
  style = "light",
  palette = palette,
}
