local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  return {
    InclineNormal = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.grey,
    },
    InclineNormalNC = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.grey,
    },
  }
end

return M
