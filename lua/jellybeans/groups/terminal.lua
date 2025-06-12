local M = {}

function M.get(c, opts)
  local terminal_colors = {
    [0] = c.total_black, -- black
    [1] = c.error, -- red
    [2] = c.highland, -- green
    [3] = c.brandy, -- yellow
    [4] = c.ship_cove, -- blue
    [5] = c.wewak, -- magenta
    [6] = c.morning_glory, -- cyan
    [7] = c.silver, -- white
    [8] = c.grey, -- bright black
    [9] = c.error, -- bright red
    [10] = c.ok, -- bright green
    [11] = c.warning, -- bright yellow
    [12] = c.info, -- bright blue
    [13] = c.biloba_flower, -- bright magenta
    [14] = c.morning_glory, -- bright cyan
    [15] = c.total_white, -- bright white
  }

  return {
    _terminal_colors = terminal_colors,
  }
end

return M
