local palettes = require("jellybeans.palettes")
local config = require("jellybeans.config")

local function get_theme()
  local opts = config.opts or config.defaults
  local bg = vim.o.background
  local palette_name = opts.background[bg]
  local p = palettes.get_palette(palette_name, opts)
  local c = p.palette

  if not c then
    vim.notify("Failed to load jellybeans palette for lualine", vim.log.levels.ERROR)
    return {}
  end

  -- For monochromatic theme, use accent colors instead of regular colors
  local is_mono = palette_name:find("mono") ~= nil

  local normal_bg = is_mono and c.accent_color_2 or c.morning_glory
  local insert_bg = is_mono and c.accent_color_1 or c.green_smoke
  local visual_bg = is_mono and c.grey_chateau or c.koromiko
  local replace_bg = is_mono and c.boulder or c.raw_sienna
  local command_bg = is_mono and c.silver or c.biloba_flower

  return {
    normal = {
      a = { fg = c.total_black, bg = normal_bg, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    insert = {
      a = { fg = c.total_black, bg = insert_bg, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    visual = {
      a = { fg = c.total_black, bg = visual_bg, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    replace = {
      a = { fg = c.total_black, bg = replace_bg, gui = "bold" },
      b = { fg = c.foreground, bg = c.grey_one },
      c = { fg = c.grey_two, bg = c.background },
    },
    command = {
      a = { fg = c.total_black, bg = command_bg, gui = "bold" },
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
