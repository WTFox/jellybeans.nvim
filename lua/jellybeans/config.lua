local M = {}

---@alias palette_name "jellybeans" | "jellybeans_light" | "jellybeans_muted" | "jellybeans_muted_light"

---@class jellybeans.Config.Background
---@field dark palette_name
---@field light palette_name

---@class jellybeans.Config
---@field transparent? boolean
---@field italics? boolean
---@field flat_ui? boolean
---@field on_highlights? fun(highlights: jellybeans.Highlights, colors: ColorScheme)
---@field on_colors? fun(colors: ColorScheme)
---@field background? jellybeans.Config.Background
M.defaults = {
  transparent = false,
  italics = true,
  flat_ui = true,
  background = {
    dark = "jellybeans_muted",
    light = "jellybeans_muted_light",
  },
  plugins = {
    all = false,
    auto = true,
  },
  on_highlights = function(highlights, colors) end,
  on_colors = function(colors) end,
}

---@param opts? jellybeans.Config
function M.setup(opts)
  if opts.style ~= nil then
    vim.notify_once(
      "[jellybeans.nvim] opts.style is deprecated, please use opts.background instead. Refer to README for usage.",
      vim.log.levels.WARN
    )
  end

  if opts.palette ~= nil then
    vim.notify_once(
      "[jellybeans.nvim] opts.palette is deprecated, please use opts.background instead. Refer to README for usage.",
      vim.log.levels.WARN
    )
  end

  M.opts = M.extend(opts)
end

---@param opts? jellybeans.Config
function M.extend(opts)
  return vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
