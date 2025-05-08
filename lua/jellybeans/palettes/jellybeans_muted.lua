local Util = require("jellybeans.util")

---@class Palette
local palette = {
  foreground = "#dad6c8", -- Desaturated muted foreground
  background = "#101010", -- Slightly warmer muted background

  grey = "#7a7a7a", -- Less saturated grey
  grey_one = "#1e1e1c", -- Warmer grey
  grey_two = "#e9e5dc", -- Muted off-white
  grey_three = "#302e2c", -- Warmer dark grey
  regent_grey = "#8a8c91", -- Less saturated
  scorpion = "#585855", -- Desaturated
  cod_grey = "#121210", -- Warmer dark
  tundora = "#3c3b38", -- Warmer mid-tone
  zambezi = "#58534f", -- Less saturated brown-grey
  silver_rust = "#c2bdb8", -- Desaturated light tone
  silver = "#bebebe", -- Desaturated silver
  alto = "#d8d4ca", -- Muted light tone
  gravel = "#3c3936", -- Warmer dark tone
  boulder = "#6f6f6c", -- Desaturated mid-grey
  cocoa_brown = "#2c2824", -- Warmer brown
  grey_chateau = "#93989c", -- Desaturated blue-grey
  bright_grey = "#353b3e", -- Desaturated blue-grey
  shuttle_grey = "#4d5459", -- Desaturated blue-grey
  mine_shaft = "#1d1c1a", -- Warmer dark
  temptress = "#38100a", -- Desaturated dark red
  bayoux_blue = "#4f5c69", -- Desaturated blue
  total_white = "#f9f5ec", -- Warm white muted
  total_black = "#0d0c0b", -- Warm black
  cadet_blue = "#a5acb1", -- Desaturated blue
  perano = "#a6c3d9", -- Desaturated light blue
  wewak = "#bd8695", -- Desaturated pink
  mantis = "#6aa84c", -- Desaturated green
  raw_sienna = "#c88a77", -- Desaturated orange
  highland = "#73916a", -- Desaturated green
  hoki = "#617b87", -- Desaturated blue
  green_smoke = "#909c6e", -- Desaturated yellow-green
  costa_del_sol = "#4e5a3a", -- Desaturated olive
  biloba_flower = "#b8aed3", -- Desaturated purple
  morning_glory = "#83adc3", -- Desaturated light blue
  goldenrod = "#e8c88c", -- Desaturated gold
  ship_cove = "#7a8aa6", -- Desaturated blue
  koromiko = "#d8a16c", -- Desaturated orange
  brandy = "#c9c08c", -- Desaturated yellow
  old_brick = "#7e2e23", -- Desaturated brick red
  dark_blue = "#1e1e7a", -- Desaturated dark blue
  ripe_plum = "#4a1c4f", -- Desaturated plum
  casal = "#2a5c56", -- Desaturated teal
  purple = "#5c1e68", -- Desaturated purple
  tea_green = "#c5d3b2", -- Desaturated light green
  dell = "#3c5c25", -- Desaturated forest green
  calypso = "#28505f", -- Desaturated teal

  error = "#cc4d4d", -- Desaturated red
  warning = "#d9a45a", -- Desaturated orange
  info = "#7db7cc", -- Desaturated blue
  hint = "#c0a48c", -- Desaturated tan
  ok = "#98b67c", -- Desaturated green
}

palette.cursor_line = {
  bg = Util.lighten(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = palette.silver_rust,
}

palette.git = {
  add = { bg = "#2e3824" }, -- Less saturated
  delete = { bg = "#4d201b" }, -- Less saturated
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
  name = "jellybeans_muted",
  style = "dark",
  palette = palette,
}
