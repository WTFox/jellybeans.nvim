local Util = require("jellybeans.util")

---@class Palette
-- The vibrant (original) jellybeans light palette
local palette = {
  foreground = "#252525",
  background = "#f5e6d3",

  grey = "#787878",
  grey_one = "#e8d5c0", -- Warmer, more sepia-toned
  grey_two = "#645c54", -- Warmer brown-grey
  grey_three = "#d8c8b8", -- Warmer, more tan
  regent_grey = "#7a8490",
  scorpion = "#606060",
  cod_grey = "#f5f5f5",
  tundora = "#404040",
  zambezi = "#605958",
  silver_rust = Util.darken("#6a6564", 0.8),
  silver = "#c7c7c7",
  alto = "#444444",
  gravel = "#d0ccd1",
  boulder = "#777777",
  cocoa_brown = Util.lighten("#d7af87", 0.6),
  grey_chateau = "#505860",
  bright_grey = "#e8e8e8",
  shuttle_grey = "#939da6",
  mine_shaft = Util.lighten("#d7af87", 0.5),
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
  biloba_flower = Util.darken("#6a4abd", 0.9),
  morning_glory = "#2B5B77",
  goldenrod = Util.darken("#a66a10", 0.8),
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
  calypso = "#2952a3",
}

palette.error = "#ff3333"
palette.warning = "#a66510"
palette.info = "#1670af"
palette.hint = palette.raw_sienna
palette.ok = "#386014"

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
  name = "jellybeans_light",
  style = "light",
  palette = palette,
}
