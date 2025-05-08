local M = {}

---@param opts? jellybeans.Config
function M.setup(opts)
  local bg = vim.o.background
  dd("highlights.setup", bg, vim.g.colors_name)
  local palette_name = opts.background[bg]
  vim.g.colors_name = palette_name

  local p = require("jellybeans.palettes").get_palette(palette_name, opts)

  local groups = require("jellybeans.groups").setup(p.palette, opts)

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  local has_lualine, lualine = pcall(require, "lualine")
  if has_lualine then
    vim.notify("refreshing lualine")
    lualine.refresh()
  end

  return p.palette, groups, opts
end

return M
