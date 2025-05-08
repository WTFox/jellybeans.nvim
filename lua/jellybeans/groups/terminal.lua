local M = {}

function M.get(c, opts)
  -- Empty table for highlight groups
  local highlights = {}
  
  -- Set up terminal colors directly using vim.g
  local terminal_colors = {
    [0] = c.total_black,     -- Black
    [1] = c.old_brick,       -- Red
    [2] = c.highland,        -- Green
    [3] = c.brandy,          -- Yellow
    [4] = c.ship_cove,       -- Blue
    [5] = c.wewak,           -- Magenta
    [6] = c.morning_glory,   -- Cyan
    [7] = c.silver,          -- White
    [8] = c.grey,            -- Bright Black
    [9] = c.raw_sienna,      -- Bright Red
    [10] = c.mantis,         -- Bright Green
    [11] = c.goldenrod,      -- Bright Yellow
    [12] = c.perano,         -- Bright Blue
    [13] = c.biloba_flower,  -- Bright Magenta
    [14] = c.morning_glory,  -- Bright Cyan
    [15] = c.total_white,    -- Bright White
  }
  
  -- Return an empty table for highlight groups
  -- The terminal colors will be applied in a separate post-processing step
  return {
    _terminal_colors = terminal_colors, -- Store colors for later use
  }
end

return M