local M = {}

---@param opts? jellybeans.Config
function M.setup(opts, palette_name_override)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true

  local bg = vim.o.background
  local palette_name = palette_name_override and palette_name_override or (opts and opts.background[bg]) or "jellybeans"
  local p = require("jellybeans.palettes").get_palette(palette_name, opts)

  local groups = require("jellybeans.groups").setup(p.palette, opts)

  -- Apply palette-specific highlight overrides if they exist
  if p.highlights and p.highlights then
    for group_name, highlight in pairs(p.highlights) do
      -- Honor user preferences for italics and transparent
      if highlight.italic ~= nil and opts and opts.italics == false then
        highlight.italic = false
      end
      if highlight.bg and opts and opts.transparent == true then
        highlight.bg = "NONE"
      end
      groups[group_name] = highlight
    end
  end

  local terminal_colors = nil
  for group, hl in pairs(groups) do
    if group == "_terminal_colors" then
      terminal_colors = hl
    else
      hl = type(hl) == "string" and { link = hl } or hl
      vim.api.nvim_set_hl(0, group, hl)
    end
  end

  if terminal_colors then
    for i = 0, 15 do
      vim.g["terminal_color_" .. i] = terminal_colors[i]
    end
  end

  local has_lualine, lualine = pcall(require, "lualine")
  if has_lualine then
    lualine.refresh()
  end

  return p.palette, groups, opts
end

return M
