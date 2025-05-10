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
  str = string,

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
  highlights = function(p)
    return {
      Comment = { fg = p.scorpion, italic = true },
      Keyword = { fg = p.grey, bold = false, cterm = { bold = false } },
      Statement = { link = "Keyword" },
      Type = {
        fg = p.accent_color_1,
        bold = true,
      },
      Function = {
        fg = p.accent_color_2,
        bold = true,
      },
      PreProc = { fg = p.boulder },
      Include = { fg = p.boulder, italic = true },
      Define = { fg = p.boulder },
      Constant = { fg = p.accent_color_1 },
      Special = { fg = p.grey_chateau },
      Operator = { fg = p.boulder },
      Identifier = { fg = p.foreground },
      String = { fg = p.str },
      ["@punctuation.bracket"] = { fg = p.silver },
      ["@punctuation.delimiter"] = { fg = p.silver },
      ["@punctuation.special"] = { fg = p.silver },
      ["@keyword"] = { link = "Keyword" },
      ["@keyword.function"] = { link = "Keyword" },
      ["@function"] = { fg = p.accent_color_2, bold = true },
      ["@function.builtin"] = { fg = p.accent_color_2, bold = true },
      ["@function.call"] = { fg = p.accent_color_2, bold = true },
      ["@variable"] = { fg = p.foreground },
      ["@variable.member"] = { fg = p.alto },
      ["@variable.parameter"] = { fg = p.silver_rust, italic = true },
      ["@type"] = { link = "Type" },
      ["@type.builtin"] = { link = "Type" },
      ["@constant.builtin"] = { link = "Type" },
      ["@string"] = { link = "String" },
      ["@string.escape"] = { link = "Special" },

      -- Blink completion plugin highlights
      BlinkCmpDoc = {
        bg = p.grey_three,
        fg = p.accent_color_2,
      },
      BlinkCmpDocBorder = {
        bg = p.grey_three,
        fg = p.grey_three,
      },
      BlinkCmpGhostText = {
        link = "Comment",
      },
      BlinkCmpDocSeparator = {
        bg = p.grey_three,
        fg = p.silver,
      },
      BlinkCmpKindCodeium = {
        bg = "NONE",
        fg = p.silver,
      },
      BlinkCmpKindCopilot = {
        bg = "NONE",
        fg = p.silver,
      },
      BlinkCmpKindDefault = {
        bg = "NONE",
        fg = p.silver,
      },
      BlinkCmpKindSupermaven = {
        bg = "NONE",
        fg = p.silver,
      },
      BlinkCmpKindTabNine = {
        bg = "NONE",
        fg = p.silver,
      },
      BlinkCmpLabel = {
        bg = "NONE",
        fg = p.grey_chateau,
      },
      BlinkCmpLabelDeprecated = {
        bg = "NONE",
        fg = p.scorpion,
        strikethrough = true,
      },
      BlinkCmpLabelMatch = {
        bg = "NONE",
        fg = p.accent_color_2,
      },
      BlinkCmpMenu = {
        bg = p.grey_three,
        fg = p.silver,
      },
      BlinkCmpMenuBorder = {
        bg = p.grey_three,
        fg = p.grey_three,
      },
      BlinkCmpSignatureHelp = {
        bg = p.grey_three,
        fg = p.silver,
      },
      BlinkCmpSignatureHelpBorder = {
        bg = p.grey_three,
        fg = p.grey_three,
      },

      GitSignsAdd = { fg = p.git.add.bg },
      GitSignsChange = { fg = p.git.change.bg },
      GitSignsDelete = { fg = p.git.delete.bg },
    }
  end,
}
