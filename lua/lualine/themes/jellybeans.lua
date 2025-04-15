local palettes = require("jellybeans.palettes")
local config = require("jellybeans.config")

local function get_theme()
  local style = config.opts.style or (vim.o.background == "light" and "light" or "dark")
  local palette_name = config.opts.palette or "jellybeans"
  local c = palettes.get_palette(palette_name, { style = style })

  if not c then
    vim.notify("Failed to load jellybeans palette for lualine", vim.log.levels.ERROR)
    return {}
  end

  return {
    normal = {
      a = { fg = c.total_black, bg = c.morning_glory, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    insert = {
      a = { fg = c.total_black, bg = c.green_smoke, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    visual = {
      a = { fg = c.total_black, bg = c.koromiko, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    replace = {
      a = { fg = c.total_black, bg = c.raw_sienna, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    command = {
      a = { fg = c.total_black, bg = c.biloba_flower, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    inactive = {
      a = { fg = c.grey, bg = c.grey_one, gui = "bold" },
      b = { fg = c.grey, bg = c.grey_one },
      c = { fg = c.grey, bg = c.background },
    },
  }
end

return get_theme()
