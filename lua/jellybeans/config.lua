local M = {}

---@class jellybeans.Background
---@field dark string
---@field light string

---@class jellybeans.Config
---@field transparent? boolean
---@field italics? boolean
---@field flat_ui? boolean
---@field on_highlights? fun(highlights: jellybeans.Highlights, colors: ColorScheme)
---@field on_colors? fun(colors: ColorScheme)
---@field background? jellybeans.Background
M.defaults = {
  background = {
    dark = "jellybeans_muted",
    light = "jellybeans_muted_light",
  },
  transparent = false,
  italics = true,
  flat_ui = true,
  plugins = {
    all = false,
    auto = true,
  },
  on_highlights = function(highlights, colors) end,
  on_colors = function(colors) end,
}

---@param opts? jellybeans.Config
function M.setup(opts)
  M.opts = M.extend(opts)
end

---@param opts? jellybeans.Config
function M.extend(opts)
  return vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
