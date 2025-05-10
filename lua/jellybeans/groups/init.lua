local Util = require("jellybeans.util")

local M = {}

M.plugins = {
  ["blink.cmp"] = "blink",
  ["CopilotChat.nvim"] = "copilotchat",
  ["dashboard-nvim"] = "dashboard",
  ["gitsigns.nvim"] = "gitsigns",
  ["grapple.nvim"] = "grapple",
  ["fzf-lua"] = "fzf_lua",
  ["incline.nvim"] = "incline",
  ["lazy.nvim"] = "lazy",
  ["neo-tree.nvim"] = "neotree",
  ["nvim-treesitter-context"] = "treesitter_context",
  ["snacks.nvim"] = "snacks",
  ["telescope.nvim"] = "telescope",
  ["trouble.nvim"] = "trouble",
  ["which-key.nvim"] = "which_key",
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
  return Util.mod("jellybeans.groups." .. name)
end

function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

function M.setup(colors, opts)
  opts = opts or {}
  opts.plugins = opts.plugins or {}

  local groups = {
    editor = true,
    syntax = true,
    semantic_tokens = true,
    treesitter = true,
    terminal = true,
  }
  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local plugins = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
      if plugins[plugin] then
        groups[group] = true
      end
    end

    -- special case for mini.nvim
    if plugins["mini.nvim"] then
      for _, group in pairs(M.plugins) do
        if group:find("^mini_") then
          groups[group] = true
        end
      end
    end
  end

  -- manually enable/disable plugins
  for plugin, group in pairs(M.plugins) do
    local use = opts.plugins[group]
    use = use == nil and opts.plugins[plugin] or use
    if use ~= nil then
      if type(use) == "table" then
        use = use.enabled
      end
      groups[group] = use or nil
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  local ret = {}

  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end

  Util.resolve(ret)

  if opts.on_highlights then
    opts.on_highlights(ret, colors)
  end

  return ret, groups
end

return M
