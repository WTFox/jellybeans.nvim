local Util = require("jellybeans.util")

---@class Palette
-- The monochromatic jellybeans palette
local palette = {
  -- Base colors
  foreground = "#e8e8d3",
  background = "#151515",

  accent_color_1 = "#7a8aa6", -- subtle blue
  accent_color_2 = "#b39066", -- more subtle gold/amber

  -- Monochromatic greys
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
  name = "jellybeans_mono",
  style = "dark",
  palette = palette,
  -- Mono-specific highlight overrides
  highlights = {
    -- Basic syntax
    Comment = { fg = "#606060", italic = true }, -- darker grey
    Keyword = { fg = "#686868", bold = true }, -- more subtle grey for keywords
    Statement = { fg = "#686868", bold = true }, -- more subtle, matching keywords
    Type = {
      fg = "#7a8aa6", -- accent color 1 for types
      bold = true,
    },
    Function = {
      fg = palette.accent_color_2, -- accent color 2 for functions to make them pop
      bold = true,
    },
    PreProc = { fg = "#787878" }, -- slightly brighter than keywords but still subtle
    Include = { fg = "#787878", italic = true },
    Define = { fg = "#787878" },
    String = { fg = "#a08070" }, -- more subtle brown for strings
    Constant = { fg = palette.accent_color_1 },
    Special = { fg = "#a0a8b0" }, -- light grey for special chars
    Operator = { fg = "#888888" }, -- medium grey
    Identifier = { fg = "#e8e8d3" },
    ["@punctuation.bracket"] = { fg = "#c0c0c0" }, -- lighter for brackets
    ["@punctuation.delimiter"] = { fg = "#c0c0c0" }, -- lighter for delimiters
    ["@punctuation.special"] = { fg = "#c0c0c0" }, -- lighter for special symbols
    ["@keyword"] = { fg = "#686868", bold = true }, -- treesitter keyword
    ["@keyword.function"] = { fg = "#686868", bold = true }, -- function keyword
    ["@keyword.return"] = { fg = "#686868", bold = true }, -- return keyword
    ["@keyword.operator"] = { fg = "#787878" }, -- slightly brighter operator keywords
    ["@function"] = { fg = palette.accent_color_2, bold = true }, -- treesitter function
    ["@function.builtin"] = { fg = palette.accent_color_2, bold = true }, -- builtin functions
    ["@function.call"] = { fg = palette.accent_color_2, bold = true }, -- function calls
    ["@variable"] = {
      fg = palette.foreground,
    }, -- any variable name
    ["@variable.member"] = { fg = palette.alto }, -- for fields
    ["@variable.parameter"] = { fg = palette.silver_rust, italic = true }, -- parameters
    ["@type"] = { fg = palette.accent_color_1, bold = true }, -- treesitter types
    ["@type.builtin"] = { fg = palette.accent_color_1, bold = true }, -- builtin types
    ["@string"] = { fg = "#a08070" }, -- treesitter strings
    ["@string.escape"] = { fg = "#a08070" }, -- escaped characters in strings
  },
}
