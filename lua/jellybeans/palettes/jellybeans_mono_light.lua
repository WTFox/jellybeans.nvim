local Util = require("jellybeans.util")

local accent_color_1 = "#7d7163"
local accent_color_2 = "#4a5e81"
local string = "#796858"

---@class Palette
local palette = {
  foreground = "#252525",
  background = "#f5f0e8",

  accent_color_1 = accent_color_1,
  accent_color_2 = accent_color_2,
  string = string,

  perano = accent_color_2,
  grey = "#787878",
  grey_one = "#e8e0d5",
  grey_two = "#645c54",
  grey_three = "#e0d8d0",
  regent_grey = "#757a82",
  scorpion = "#909090",
  cod_grey = "#f5f5f5",
  tundora = "#606060",
  zambezi = "#605958",
  silver_rust = "#6a6564",
  silver = "#555555",
  alto = "#444444",
  gravel = "#d0ccd1",
  boulder = "#777777",
  cocoa_brown = "#d8c8b8",
  grey_chateau = "#505860",
  bright_grey = "#e8e8e8",
  shuttle_grey = "#939da6",
  mine_shaft = "#d7c8b8",
  temptress = "#ffe5ea",
  bayoux_blue = "#576270",
  total_white = "#000000",
  total_black = "#ffffff",
  cadet_blue = "#505860",
  old_brick = "#e8d0c8",

  -- Diagnostics
  error = "#cc0000",
  warning = "#a36000",
  info = "#0060a3",
  hint = "#796858",
  ok = "#3d6c25",

  morning_glory = accent_color_2,
  green_smoke = accent_color_1,
  koromiko = "#707070",
  raw_sienna = "#645c54",
  biloba_flower = "#555555",
  goldenrod = accent_color_1,
  brandy = "#6a6564",
  wewak = "#645c54",
}

palette.cursor_line = {
  bg = Util.darken(palette.background, 0.95),
}

palette.cursor_line_nr = {
  fg = "#000000",
}

palette.git = {
  add = { bg = "#d8e0d0" },
  delete = { bg = "#e8d0d0" },
  change = { bg = "#d0d8e0" },
  text = { bg = palette.grey_three },
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
  name = "jellybeans_mono_light",
  style = "light",
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

    -- Blink completion plugin highlights
    BlinkCmpDoc = {
      bg = palette.grey_three,
      fg = palette.accent_color_2,
    },
    BlinkCmpDocBorder = {
      bg = palette.grey_three,
      fg = palette.grey_three,
    },
    BlinkCmpGhostText = {
      link = "Comment",
    },
    BlinkCmpDocSeparator = {
      bg = palette.grey_three,
      fg = palette.silver,
    },
    BlinkCmpKindCodeium = {
      bg = "NONE",
      fg = palette.silver,
    },
    BlinkCmpKindCopilot = {
      bg = "NONE",
      fg = palette.silver,
    },
    BlinkCmpKindDefault = {
      bg = "NONE",
      fg = palette.silver,
    },
    BlinkCmpKindSupermaven = {
      bg = "NONE",
      fg = palette.silver,
    },
    BlinkCmpKindTabNine = {
      bg = "NONE",
      fg = palette.silver,
    },
    BlinkCmpLabel = {
      bg = "NONE",
      fg = palette.grey_chateau,
    },
    BlinkCmpLabelDeprecated = {
      bg = "NONE",
      fg = palette.scorpion,
      strikethrough = true,
    },
    BlinkCmpLabelMatch = {
      bg = "NONE",
      fg = palette.accent_color_2,
    },
    BlinkCmpMenu = {
      bg = palette.grey_three,
      fg = palette.silver,
    },
    BlinkCmpMenuBorder = {
      bg = palette.grey_three,
      fg = palette.grey_three,
    },
    BlinkCmpSignatureHelp = {
      bg = palette.grey_three,
      fg = palette.silver,
    },
    BlinkCmpSignatureHelpBorder = {
      bg = palette.grey_three,
      fg = palette.grey_three,
    },

    GitSignsAdd = { fg = palette.ok },
    GitSignsChange = { fg = palette.info },
    GitSignsDelete = { fg = palette.error },
  },
}
