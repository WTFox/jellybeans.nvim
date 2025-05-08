local M = {}

function M.get(c, opts)
  local terminal_colors = {
    [0] = c.total_black,
    [1] = c.old_brick,
    [2] = c.highland,
    [3] = c.brandy,
    [4] = c.ship_cove,
    [5] = c.wewak,
    [6] = c.morning_glory,
    [7] = c.silver,
    [8] = c.grey,
    [9] = c.raw_sienna,
    [10] = c.mantis,
    [11] = c.goldenrod,
    [12] = c.perano,
    [13] = c.biloba_flower,
    [14] = c.morning_glory,
    [15] = c.total_white,
  }

  return {
    _terminal_colors = terminal_colors,
  }
end

return M
