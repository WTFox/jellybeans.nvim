local M = {}

M.version = "1.0.0" -- x-release-please-version

local is_loading = false

---@param opts? jellybeans.Config
function M.setup(opts)
  require("jellybeans.config").setup(opts)

  vim.api.nvim_create_autocmd("OptionSet", {
    group = vim.api.nvim_create_augroup("JellybeansColorscheme", { clear = true }),
    pattern = "background",
    callback = function()
      local config = require("jellybeans.config")
      local b = vim.o.background
      config.opts.style = b == "light" and "light" or "dark"
      M.load()
    end,
  })
end

function M.load()
  if is_loading then
    return
  end

  is_loading = true
  local ok, result = pcall(function()
    return require("jellybeans.highlights").setup(require("jellybeans.config").opts)
  end)
  is_loading = false

  if not ok then
    vim.notify("Failed to load jellybeans colorscheme: " .. tostring(result), vim.log.levels.ERROR)
    return
  end

  return result
end

function M.toggle()
  local config = require("jellybeans.config")
  config.opts.style = config.opts.style == "light" and "dark" or "light"
  vim.o.background = config.opts.style
  M.load()

  local has_lualine, lualine = pcall(require, "lualine")
  if has_lualine then
    lualine.refresh()
  end
end

return M
