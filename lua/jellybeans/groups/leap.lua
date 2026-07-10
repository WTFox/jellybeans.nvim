local M = {}

---@type jellybeans.HighlightsFn
function M.get(c, opts)
  return {
    LeapMatch = { fg = c.mine_shaft, bg = c.morning_glory, bold = opts.bold },
    LeapLabel = { fg = c.total_white, bg = c.error, bold = opts.bold },
    LeapLabelPrimary = { link = "LeapLabel" },
    LeapLabelSecondary = { fg = c.mine_shaft, bg = c.koromiko, bold = opts.bold },
    LeapBackdrop = { link = "Comment" },
  }
end

return M
