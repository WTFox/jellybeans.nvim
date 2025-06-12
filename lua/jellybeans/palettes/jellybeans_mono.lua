local Util = require("jellybeans.util")

local accent_color_1 = "#b39066"
local accent_color_2 = "#7a8aa6"
local str = "#a08070"

---@class Palette
local palette = {
  foreground = "#e8e8d3",
  background = "#151515",

  accent_color_1 = accent_color_1,
  accent_color_2 = accent_color_2,
  str = str,

  perano = accent_color_2,
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
  error = "#c95c5c",
  warning = "#ffaf00",
  info = accent_color_2,
  hint = "#a08070",
  ok = "#afd787",

  -- Needed for compatibility with other palettes
  morning_glory = accent_color_2,
  green_smoke = accent_color_1,
  koromiko = "#888888",
  raw_sienna = "#a0a8b0",
  biloba_flower = "#c7c7c7",
  goldenrod = accent_color_1,
  brandy = "#ccc5c4",
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

palette.visual = palette.tundora
palette.none = "NONE"

palette.float_bg = palette.gravel
palette.float_border = palette.tundora

return {
  name = "jellybeans_mono",
  style = "dark",
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
      ["@keyword.function.go"] = { link = "Keyword" },
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

      GitSignsAdd = p.git.add,
      GitSignsChange = p.git.change,
      GitSignsDelete = p.git.delete,

      LspReferenceWrite = { bg = p.bright_grey },
      LspReferenceRead = { bg = p.bright_grey },
      LspReferenceText = { bg = p.bright_grey },
    }
  end,
}
