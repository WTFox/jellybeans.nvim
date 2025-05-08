local Util = require("jellybeans.util")

---@class Palette
-- The vibrant (original) jellybeans palette
local palette = {
  foreground = "#e8e8d3",
  background = "#151515",

  grey = "#888888",
  grey_one = "#1c1c1c",
  grey_two = "#f0f0f0",
  grey_three = "#333333",
  regent_grey = "#9098A0",
  scorpion = "#606060",
  cod_grey = "#101010",
  tundora = "#404040",
  zambezi = "#605958",
  silver_rust = "#ccc5c4",
  silver = "#c7c7c7",
  alto = "#dddddd",
  gravel = "#403c41",
  boulder = "#777777",
  cocoa_brown = "#302028",
  grey_chateau = "#a0a8b0",
  bright_grey = "#384048",
  shuttle_grey = "#535d66",
  mine_shaft = "#1f1f1f",
  temptress = "#40000a",
  bayoux_blue = "#556779",
  total_white = "#ffffff",
  total_black = "#000000",
  cadet_blue = "#b0b8c0",
  perano = "#b0d0f0",
  wewak = "#cc88a3",
  mantis = "#70b950",
  raw_sienna = "#d98870",
  highland = "#799d6a",
  hoki = "#668799",
  green_smoke = "#99ad6a",
  costa_del_sol = "#556633",
  biloba_flower = "#c6b6ee",
  morning_glory = "#8fbfdc",
  goldenrod = "#fad07a",
  ship_cove = "#8197bf",
  koromiko = "#e6a75a",
  brandy = "#dad085",
  old_brick = "#902020",
  dark_blue = "#0000df",
  ripe_plum = "#540063",
  casal = "#2D7067",
  purple = "#700089",
  tea_green = "#d2ebbe",
  dell = "#437019",
  calypso = "#2B5B77",

  error = "#ff0000",
  warning = "#ffaf00",
  info = "#87d7ff",
  hint = "#d7af87",
  ok = "#afd787",
}

palette.cursor_line = {
  bg = Util.lighten(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = palette.silver_rust,
}

palette.git = {
  add = { bg = "#333d1f" },
  delete = { bg = "#561313" },
  change = { bg = palette.grey_one },
  text = { bg = palette.grey_three },
}

palette.diag = {
  error = palette.error,
  warning = palette.warning,
  info = palette.info,
  hint = palette.hint,
  ok = palette.ok,
}

palette.visual = palette.tundora
palette.none = "NONE"

palette.float_bg = palette.gravel
palette.float_border = palette.tundora

return {
  name = "jellybeans",
  style = "dark",
  palette = palette,
}
