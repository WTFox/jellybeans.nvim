local M = {}

---@param opts? jellybeans.Config
function M.setup(opts)
  require("jellybeans.config").setup(opts)
end

function M.load(palette_name_override)
  local ok, result = pcall(function()
    local config = require("jellybeans.config")
    local opts = config.opts or config.defaults
    return require("jellybeans.highlights").setup(opts, palette_name_override)
  end)

  if not ok then
    vim.notify("Failed to load jellybeans colorscheme: " .. tostring(result), vim.log.levels.ERROR)
    return
  end

  vim.g.colors_name = "jellybeans"
  return result
end

return M
