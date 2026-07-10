local M = {}

---@type jellybeans.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { link = "Comment" },
    FlashMatch    = { fg = c.mine_shaft, bg = c.morning_glory },
    FlashCurrent  = { fg = c.mine_shaft, bg = c.tea_green },
    FlashLabel    = { fg = c.total_white, bg = c.error, bold = opts.bold },
  }
end

return M
