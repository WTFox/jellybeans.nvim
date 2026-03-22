local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  return {
    Normal = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.foreground,
    },
    NormalFloat = {
      bg = opts.transparent and "NONE" or (opts.flat_ui and c.float_bg or c.background),
      fg = c.foreground,
    },
    NormalNC = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.foreground,
    },
    FloatBorder = opts.flat_ui
      and { fg = c.float_bg, bg = c.float_bg }
      or { fg = c.float_border, bg = c.background },
    FloatTitle = {
      bg = opts.transparent and "NONE" or (opts.flat_ui and c.float_bg or c.background),
      fg = c.biloba_flower,
      bold = opts.bold,
    },
    WinBar = { bg = opts.transparent and "NONE" or c.background },
    WinBarNC = { bg = opts.transparent and "NONE" or c.background },
    ColorColumn = { bg = c.total_black },
    Conceal = { fg = c.morning_glory },
    Cursor = { bg = c.alto, fg = c.background },
    CurSearch = { bg = c.koromiko, fg = c.mine_shaft },
    IncSearch = { bg = c.koromiko, fg = c.mine_shaft },
    CursorColumn = { bg = c.grey_one },
    CursorLine = { bg = opts.transparent and "NONE" or c.cursor_line.bg },
    CursorLineNr = { bg = opts.transparent and "NONE" or c.cursor_line_nr.bg, fg = c.cursor_line_nr.fg },
    Directory = { fg = c.brandy },
    DiffAdd = c.git.add,
    DiffChange = c.git.change,
    DiffDelete = c.git.delete,
    DiffText = c.git.text,
    Error = { fg = c.error },
    ErrorMsg = { fg = c.error },
    VertSplit = { fg = c.gravel },
    Folded = { fg = c.grey_chateau, bg = c.bright_grey },
    FoldColumn = { fg = c.shuttle_grey, bg = c.mine_shaft },
    SignColumn = { fg = c.boulder },
    LineNr = { fg = c.zambezi },
    MatchParen = { fg = c.wewak, bold = opts.bold },
    ModeMsg = { fg = c.highland },
    NonText = { fg = c.scorpion },
    Pmenu = { bg = c.grey_three },
    PmenuSel = {
      fg = vim.o.background == "light" and c.background or c.foreground,
      bg = c.calypso,
      bold = opts.bold,
    },
    PmenuSbar = {
      bg = c.tundora,
      fg = c.zambezi,
    },
    Question = { fg = c.mantis },
    QuickFixLine = { bg = c.bright_grey },
    Search = { fg = c.wewak, bg = c.cocoa_brown },
    SpecialKey = { fg = c.tundora, bg = c.grey_one },
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.old_brick, undercurl = true },
    SpellLocal = { sp = c.hoki, undercurl = true },
    SpellRare = { sp = c.hoki, undercurl = true },
    StatusLine = { fg = c.total_white, bg = c.grey_one },
    StatusLineNC = { fg = c.silver, bg = c.grey_one },
    TabLine = { fg = c.cadet_blue, bg = c.total_black },
    TabLineFill = { fg = c.regent_grey },
    TabLineSel = { fg = c.mantis, bg = c.total_black },
    Title = { fg = c.mantis },
    Visual = { bg = c.visual },
    WinSeparator = { fg = c.grey_one },

    GitSignsAddVirtLnInLine = c.git.add,
    GitSignsChangeVirtLnInLine = c.git.change,
    GitSignsDeleteVirtLnInLine = c.git.delete,

    DiagnosticError = { fg = c.diag.error },
    DiagnosticUnderlineError = { undercurl = true, sp = c.diag.error },
    DiagnosticWarn = { fg = c.diag.warning },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.diag.warning },
    DiagnosticInfo = { fg = c.diag.info },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.diag.info },
    DiagnosticHint = { fg = c.diag.hint },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.diag.hint },
    DiagnosticOk = { fg = c.diag.ok },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.diag.ok },
    DiagnosticUnnecessary = { fg = c.grey, undercurl = true },
  }
end

return M
