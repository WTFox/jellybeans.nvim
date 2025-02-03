local Util = require("jellybeans.util")

---@class Palette
local palette = {
  foreground = "#262626",
  background = "#fdf6e3",

  grey = "#787878",
  grey_one = "#e0dcd7",
  grey_two = "#595959",
  grey_three = "#c8c4c0",
  regent_grey = "#7a8490",
  scorpion = "#606060",
  cod_grey = "#f5f5f5",
  tundora = "#404040",
  zambezi = "#605958",
  silver_rust = "#6a6564",
  silver = "#c7c7c7",
  alto = "#444444",
  gravel = "#d0ccd1",
  boulder = "#777777",
  cocoa_brown = Util.lighten("#d7af87", 0.4),
  grey_chateau = "#505860",
  bright_grey = "#e8e8e8",
  shuttle_grey = "#939da6",
  mine_shaft = "#f8f8f8",
  temptress = "#ffe5ea",
  bayoux_blue = "#556779",
  total_white = "#000000",
  total_black = "#ffffff",
  cadet_blue = "#505860",

  perano = "#234291",
  wewak = "#904070",
  mantis = "#386014",
  raw_sienna = "#954d3b",
  highland = "#457039",
  hoki = "#3a596a",
  green_smoke = "#658349",
  costa_del_sol = "#556633",
  biloba_flower = "#6a4abd",
  morning_glory = "#1670af",
  goldenrod = "#a66a10",
  ship_cove = "#2952a3",
  koromiko = "#b87520",
  brandy = "#876820",
  old_brick = "#a02020",
  dark_blue = "#0000af",
  ripe_plum = "#540063",
  casal = "#2D7067",
  purple = "#5a0069",
  tea_green = "#92ae7e",
  dell = "#437019",
  calypso = "#2B5B77",

  error = "#ff3333",
  warning = "#a66510",
  info = "#1670af",
  hint = "#775533",
  ok = "#386014",
}

palette.cursor_line = {
  bg = Util.darken(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = "#000000",
}

palette.git = {
  add = { bg = palette.tea_green },
  delete = { bg = palette.error },
  change = { bg = palette.info },
  text = { bg = palette.none },
}

palette.diag = {
  error = palette.error,
  warning = palette.warning,
  info = palette.info,
  hint = palette.hint,
  ok = palette.ok,
}

palette.visual = palette.grey_one
palette.none = "NONE"

palette.float_bg = palette.grey_three
palette.float_border = palette.foreground

return palette
