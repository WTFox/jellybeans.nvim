local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  return {
    ["@annotation"] = "PreProc",
    ["@attribute"] = "PreProc",
    ["@boolean"] = "Boolean",
    ["@character"] = "Character",
    ["@character.printf"] = "SpecialChar",
    ["@character.special"] = "SpecialChar",
    ["@comment"] = "Comment",
    ["@constant"] = "Constant",
    ["@constant.builtin"] = "Define",
    ["@constant.macro"] = "Define",
    ["@diff.delta"] = "DiffChange",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.plus"] = "DiffAdd",
    ["@function"] = "Function",
    ["@function.builtin"] = "Special",
    ["@function.call"] = "@function",
    ["@function.macro"] = "Macro",
    ["@function.method"] = "Function",
    ["@function.method.call"] = "@function.method",
    ["@keyword"] = { fg = c.biloba_flower },
    ["@keyword.conditional"] = "Conditional",
    ["@keyword.coroutine"] = "@keyword",
    ["@keyword.debug"] = "Debug",
    ["@keyword.directive"] = "PreProc",
    ["@keyword.directive.define"] = "Define",
    ["@keyword.exception"] = "Exception",
    ["@keyword.function"] = {
      fg = c.biloba_flower,
      -- style = opts.styles.functions
    }, -- For keywords used to define a function.
    ["@keyword.import"] = "Include",
    ["@keyword.operator"] = "@operator",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = { fg = c.wewak },
    ["@keyword.return.go"] = { fg = c.wewak },
    ["@keyword.storage"] = "StorageClass",
    ["@label"] = { fg = c.morning_glory }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"] = "@none",
    ["@markup.emphasis"] = { italic = true },
    ["@markup.environment"] = "Macro",
    ["@markup.environment.name"] = "Type",
    ["@markup.heading"] = "Title",
    ["@markup.raw.markdown_inline"] = { fg = c.koromiko },
    ["@markup.heading.1.markdown"] = "RenderMarkdwonH1Bg",
    ["@markup.heading.2.markdown"] = "RenderMarkdwonH2Bg",
    ["@markup.heading.3.markdown"] = "RenderMarkdwonH3Bg",
    ["@markup.heading.4.markdown"] = "RenderMarkdwonH4Bg",
    ["@markup.heading.5.markdown"] = "RenderMarkdwonH5Bg",
    ["@markup.heading.6.markdown"] = "RenderMarkdwonH6Bg",
    ["@markup.italic"] = { italic = true },
    ["@markup.link"] = { fg = c.tea_green },
    ["@markup.link.label"] = "SpecialChar",
    ["@markup.link.label.symbol"] = "Identifier",
    ["@markup.link.url"] = "Underlined",
    ["@markup.list"] = { fg = c.morning_glory }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"] = { fg = c.tea_green }, -- For brackets and parens.
    ["@markup.list.markdown"] = { fg = c.raw_sienna, bold = true },
    ["@markup.list.unchecked"] = { fg = c.ship_cove }, -- For brackets and parens.
    ["@markup.math"] = "Special",
    ["@markup.raw"] = "String",
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.underline"] = { underline = true },
    ["@module"] = "Include",
    ["@module.go"] = "Indentifier",
    ["@module.builtin"] = { fg = c.wewak }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"] = "@variable.builtin",
    ["@none"] = {},
    ["@number"] = "Number",
    ["@number.float"] = "Float",
    ["@operator"] = "Operator",
    ["@property"] = "Property",
    ["@property.toml"] = "Operator",
    ["@punctuation.bracket"] = { fg = c.morning_glory }, -- For brackets and parens.
    ["@punctuation.delimiter"] = { fg = c.morning_glory }, -- For delimiters ie: `.`
    ["@punctuation.special"] = { fg = c.morning_glory }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.raw_sienna }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"] = "String",
    ["@string.documentation"] = "@comment",
    ["@string.escape"] = { fg = c.biloba_flower }, -- For escape characters within a string.
    ["@string.regexp"] = { fg = c.morning_glory }, -- For regexes.
    ["@tag"] = "Label",
    ["@tag.attribute"] = "@property",
    ["@tag.delimiter"] = "Delimiter",
    ["@tag.delimiter.tsx"] = { fg = Util.blend_bg(c.morning_glory, 0.7) },
    ["@tag.tsx"] = { fg = c.morning_glory },
    ["@tag.jsx"] = { fg = c.morning_glory },
    ["@tag.javascript"] = { fg = c.morning_glory },
    ["@type"] = "Type",
    ["@type.builtin"] = { fg = Util.blend_bg(c.morning_glory, 0.8) },
    ["@type.builtin.python"] = { fg = Util.blend_bg(c.morning_glory, 0.8) },
    ["@type.definition"] = "Typedef",
    ["@type.qualifier"] = "@keyword",
    ["@variable"] = {
      fg = c.foreground,
      -- style = opts.styles.variables
    }, -- Any variable name that does not have another highlight.
    ["@variable.member"] = { fg = c.alto }, -- For fields.
    ["@variable.parameter"] = { fg = c.silver_rust, italic = true }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.old_brick, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- JSON
    ["@property.json"] = { fg = c.morning_glory },

    -- JSX/TSX
    ["@tag.builtin.tsx"] = { fg = c.morning_glory },

    -- GO
    ["@keyword.function.go"] = "Function",
    ["@keyword.coroutine.go"] = "Exception",

    -- Rust
    ["@keyword.import.rust"] = { fg = c.biloba_flower },
    ["@character.rust"] = "String",
  }
end

return M