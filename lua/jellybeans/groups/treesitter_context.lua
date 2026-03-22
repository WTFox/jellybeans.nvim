local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  return {
    TreesitterContext = { bg = opts.transparent and c.none or c.grey_one },
    TreesitterContextLineNumber = { fg = c.zambezi, bg = c.grey_one },
    TreesitterContextBottom = { underline = false },
  }
end

return M
