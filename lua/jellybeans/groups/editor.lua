local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  return {
    Normal = { fg = c.foreground, bg = c.background },
    NormalFloat = { bg = c.grey_three },
    ColorColumn = { bg = c.total_black },
    Conceal = { fg = c.morning_glory },
    Cursor = { bg = c.alto, fg = c.background },
    CursorColumn = { bg = c.grey_one },
    CursorLine = { bg = c.grey_one },
    Directory = { fg = c.brandy },
    DiffAdd = c.git.add,
    DiffChange = c.git.change,
    DiffDelete = c.git.delete,
    DiffText = c.git.text,
    ErrorMsg = { bg = c.error },
    VertSplit = { fg = c.gravel },
    Folded = { fg = c.grey_chateau, bg = c.bright_grey },
    FoldColumn = { fg = c.shuttle_grey, bg = c.mine_shaft },
    SignColumn = { fg = c.boulder },
    LineNr = { fg = c.zambezi },
    CursorLineNr = { fg = c.silver_rust },
    MatchParen = { fg = c.wewak, bold = true },
    ModeMsg = { fg = c.highland },
    NonText = { fg = c.scorpion },
    Pmenu = { bg = c.grey_three },
    PmenuSel = { bg = c.calypso, bold = true },
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
    Visual = { bg = c.tundora },
    WinSeparator = { fg = c.cadet_blue },
    GitSignsAddVirtLnInLine = c.git.add,
    GitSignsChangeVirtLnInLine = c.git.change,
    GitSignsDeleteVirtLnInLine = c.git.delete,

    DiagnosticError = { fg = c.diag.error },
    DiagnosticWarn = { fg = c.diag.warning },
    DiagnosticInfo = { fg = c.diag.info },
    DiagnosticHint = { fg = c.diag.hint },
    DiagnosticOk = { fg = c.diag.ok },
  }
end

return M
