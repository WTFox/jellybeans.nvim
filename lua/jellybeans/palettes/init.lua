local M = {}

---@class ColorScheme: Palette
function M.get_palette(palette_name, opts)
  local ok, p = pcall(require, "jellybeans.palettes." .. palette_name)
  if not ok then
    vim.notify("Failed to load palette: " .. palette_name, vim.log.levels.ERROR)
    return require("jellybeans.palettes.jellybeans")
  end

  if opts and opts.on_colors then
    opts.on_colors(p.palette)
  end

  return p
end

return M
