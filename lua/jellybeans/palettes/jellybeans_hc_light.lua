local Util = require("jellybeans.util")

---@class Palette
-- High contrast light variant: near-white bg, pure-black fg, boosted accent saturation
local palette = {
  foreground = "#000000",
  background = "#fafafa",

  grey = "#707070",
  grey_one = "#f0f0f0",
  grey_two = "#505050",
  grey_three = "#e8e8e8",
  regent_grey = "#607080",
  scorpion = "#585858",
  cod_grey = "#f5f5f5",
  tundora = "#383838",
  zambezi = "#605958",
  silver_rust = "#404040",
  silver = "#606060",
  alto = "#303030",
  gravel = "#e0e0e0",
  boulder = "#585858",
  cocoa_brown = "#e8d0c0",
  grey_chateau = "#505860",
  bright_grey = "#f0f0f8",
  shuttle_grey = "#4a5560",
  mine_shaft = "#f0f0f0",
  temptress = "#fff0f2",
  bayoux_blue = "#4a6070",
  total_white = "#000000",
  total_black = "#ffffff",
  cadet_blue = "#505868",
  perano = "#0a3a8a",
  wewak = "#8a0050",
  mantis = "#1f5d10",
  raw_sienna = "#8a3a10",
  highland = "#3a6030",
  hoki = "#306070",
  green_smoke = "#507020",
  costa_del_sol = "#4a5020",
  biloba_flower = "#4a2090",
  morning_glory = "#0a4a7a",
  goldenrod = "#7a5000",
  ship_cove = "#1a3a80",
  koromiko = "#8a5000",
  brandy = "#6a5000",
  old_brick = "#8a1010",
  dark_blue = "#0000c0",
  ripe_plum = "#4a0060",
  casal = "#205a50",
  purple = "#600080",
  tea_green = "#405820",
  dell = "#2a5500",
  calypso = "#0a3060",

  error = "#c00000",
  warning = "#8a4a00",
  info = "#0a4a8a",
  hint = "#8a3a10",
  ok = "#1f5d10",
}

palette.cursor_line = {
  bg = Util.darken(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = "#000000",
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
  name = "jellybeans_hc_light",
  style = "light",
  palette = palette,
}
