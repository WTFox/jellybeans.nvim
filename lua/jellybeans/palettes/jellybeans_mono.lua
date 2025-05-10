local Util = require("jellybeans.util")

---@class Palette
local palette = {
  foreground = "#e8e8d3",
  background = "#151515",

  accent_color_1 = "#b39066", -- more subtle gold/amber
  accent_color_2 = "#7a8aa6", -- subtle blue

  string = "#a08070",
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
  old_brick = "#f0e0d6",

  -- Diagnostics
  error = "#ff0000",
  warning = "#ffaf00",
  info = "#87d7ff",
  hint = "#a08070", -- more subtle brown
  ok = "#afd787",

  -- Needed for compatibility with other palettes
  morning_glory = "#8fbfdc",
  green_smoke = "#fad07a",
  koromiko = "#888888",
  raw_sienna = "#a0a8b0",
  biloba_flower = "#c7c7c7",
  goldenrod = "#fad07a",
  brandy = "#ccc5c4",
  perano = "#8fbfdc",
  wewak = "#a0a8b0",
}

-- Cursor and git highlights
palette.cursor_line = {
  bg = Util.lighten(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = palette.silver_rust,
}

palette.git = {
  add = { bg = "#333d1f" },
  delete = { bg = "#561313" },
  change = { bg = palette.accent_color_2 },
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
  name = "jellybeans_mono",
  style = "dark",
  palette = palette,
  highlights = {
    Comment = { fg = palette.scorpion, italic = true },
    Keyword = { fg = palette.grey, bold = false, cterm = { bold = false } },
    Statement = { link = "Keyword" },
    Type = {
      fg = palette.accent_color_1,
      bold = true,
    },
    Function = {
      fg = palette.accent_color_2,
      bold = true,
    },
    PreProc = { fg = palette.boulder },
    Include = { fg = palette.boulder, italic = true },
    Define = { fg = palette.boulder },
    Constant = { fg = palette.accent_color_1 },
    Special = { fg = palette.grey_chateau },
    Operator = { fg = palette.boulder },
    Identifier = { fg = palette.foreground },
    String = { fg = palette.string },
    ["@punctuation.bracket"] = { fg = palette.silver },
    ["@punctuation.delimiter"] = { fg = palette.silver },
    ["@punctuation.special"] = { fg = palette.silver },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@function"] = { fg = palette.accent_color_2, bold = true },
    ["@function.builtin"] = { fg = palette.accent_color_2, bold = true },
    ["@function.call"] = { fg = palette.accent_color_2, bold = true },
    ["@variable"] = { fg = palette.foreground },
    ["@variable.member"] = { fg = palette.alto },
    ["@variable.parameter"] = { fg = palette.silver_rust, italic = true },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@constant.builtin"] = { link = "Type" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { link = "Special" },

    GitSignsAdd = { fg = palette.git.add.bg },
    GitSignsChange = { fg = palette.git.change.bg },
    GitSignsDelete = { fg = palette.git.delete.bg },
  },
}
