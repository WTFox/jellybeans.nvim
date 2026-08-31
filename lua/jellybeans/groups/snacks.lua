local Util = require("jellybeans.util")

local M = {}

---@param c Palette
---@param opts jellybeans.Config
local function bordered_picker(c, opts)
  return {
    SnacksPicker = { bg = opts.transparent == true and "NONE" or c.background },
    SnacksPickerTitle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.perano },
    SnacksPickerBoxTitle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.perano },
    SnacksPickerInputTitle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.biloba_flower },
    SnacksPickerListTitle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.koromiko },
    SnacksPickerPreviewTitle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.koromiko },
    SnacksPickerBorder = {
      link = "FloatBorder",
    },
    SnacksPickerToggle = { bg = opts.transparent == true and "NONE" or c.background, fg = c.perano },
  }
end

---@param c Palette
---@param opts jellybeans.Config
local function flat_picker(c, opts)
  local prompt = c.mine_shaft
  return {
    SnacksPickerBorder = { fg = c.background, bg = c.background },
    SnacksPickerInput = { fg = c.foreground, bg = prompt },
    SnacksPickerInputBorder = { fg = prompt, bg = prompt },
    SnacksPickerBoxBorder = { fg = prompt, bg = prompt },
    SnacksPickerTitle = { fg = c.background, bg = c.perano },
    SnacksPickerBoxTitle = { fg = prompt, bg = c.perano },
    SnacksPickerList = { bg = prompt },
    SnacksPickerPrompt = { fg = c.koromiko, bg = prompt },
    SnacksPickerPreviewTitle = { fg = c.background, bg = c.koromiko },
    SnacksPickerPreview = { bg = c.background },
    SnacksPickerToggle = { bg = c.perano, fg = c.background },
  }
end

---@param c Palette
---@param opts jellybeans.Config
function M.get(c, opts)
  local picker_hl = bordered_picker(c, opts)
  if opts.flat_ui then
    picker_hl = flat_picker(c, opts)
  end
  return vim.tbl_extend("keep", picker_hl, {
    SnacksNormal = { bg = opts.transparent and "NONE" or c.background },
    SnacksNormalNC = { bg = opts.transparent and "NONE" or c.background },
    SnacksBackdrop = { bg = c.background },

    SnacksIndent = { fg = c.grey_three },
    SnacksIndentChunk = { fg = c.grey_chateau },
    SnacksIndentScope = { fg = c.grey_chateau },
    SnacksIndent1 = { fg = c.perano },
    SnacksIndent2 = { fg = c.biloba_flower },
    SnacksIndent3 = { fg = c.wewak },
    SnacksIndent4 = { fg = c.perano },
    SnacksIndent5 = { fg = c.biloba_flower },
    SnacksIndent6 = { fg = c.wewak },
    SnacksIndent7 = { fg = c.perano },
    SnacksIndent8 = { fg = c.biloba_flower },

    SnacksDashboardNormal = { bg = opts.transparent and "NONE" or c.background },
    SnacksDashboardDesc = { bg = opts.transparent and "NONE" or c.background, fg = c.biloba_flower },
    SnacksDashboardFile = { bg = opts.transparent and "NONE" or c.background, fg = c.koromiko },
    SnacksDashboardDir = { bg = opts.transparent and "NONE" or c.background, fg = c.perano },
    SnacksDashboardFooter = { bg = opts.transparent and "NONE" or c.background, fg = c.biloba_flower },
    SnacksDashboardHeader = { bg = opts.transparent and "NONE" or c.background, fg = c.perano },
    SnacksDashboardIcon = { bg = opts.transparent and "NONE" or c.background, fg = c.raw_sienna },
    SnacksDashboardKey = { bg = opts.transparent and "NONE" or c.background, fg = c.wewak },
    SnacksDashboardTerminal = { bg = opts.transparent and "NONE" or c.background },
    SnacksDashboardSpecial = { bg = opts.transparent and "NONE" or c.background, fg = c.goldenrod },
    SnacksDashboardTitle = { bg = opts.transparent and "NONE" or c.background, fg = c.perano },

    SnacksPickerDirectory = { fg = c.perano },
    SnacksPickerFile = { fg = c.foreground },
    SnacksPickerGitCommit = { fg = c.raw_sienna },
    SnacksPickerSearch = { link = "Visual" },

    SnacksIconProperty = {
      bg = opts.transparent and "NONE" or c.background,
    },

    SnacksScratchTitle = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.perano,
    },
    SnacksScratchDesc = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.biloba_flower,
    },
    SnacksScratchFooter = {
      bg = opts.transparent and "NONE" or c.background,
    },
    SnacksScratchKey = {
      bg = opts.transparent and "NONE" or c.background,
      fg = c.koromiko,
    },
    SnacksDim = {
      link = "Comment",
    },
  })
end

return M
