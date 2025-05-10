local Util = require("jellybeans.util")

local M = {}

function M.get(c, opts)
  opts = opts or {}
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
    ["@constructor.python"] = "Type",
    ["@diff.delta"] = "DiffChange",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.plus"] = "DiffAdd",
    ["@function"] = "Function",
    ["@function.builtin"] = "Special",
    ["@function.call"] = "@function",
    ["@function.macro"] = "Macro",
    ["@function.method"] = "Function",
    ["@function.htmldjango"] = "Function",
    ["@function.method.call"] = "@function.method",
    ["@keyword"] = { fg = c.biloba_flower },
    ["@keyword.conditional"] = "Conditional",
    ["@keyword.conditional.htmldjango"] = "@function.method",
    ["@keyword.coroutine"] = "@keyword",
    ["@keyword.debug"] = "Debug",
    ["@keyword.directive"] = "PreProc",
    ["@keyword.directive.define"] = "Define",
    ["@keyword.exception"] = "Exception",
    ["@keyword.function"] = {
      fg = c.biloba_flower,
      -- style = opts.styles.functions
    }, -- For keywords used to define a function.
    ["@keyword.function.go"] = {
      fg = c.biloba_flower,
      -- style = opts.styles.functions
    }, -- For keywords used to define a function.
    ["@keyword.import"] = "Include",
    ["@keyword.import.python"] = { fg = c.biloba_flower },
    ["@keyword.operator"] = "@operator",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = { fg = c.wewak },
    ["@keyword.return.go"] = { fg = c.wewak },
    ["@keyword.storage"] = "StorageClass",
    ["@label"] = { fg = c.morning_glory }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"] = "@none",
    ["@markup.emphasis"] = { italic = opts.italics },
    ["@markup.environment"] = "Macro",
    ["@markup.environment.name"] = "Type",
    ["@markup.heading"] = "Title",
    ["@markup.raw.markdown_inline"] = { fg = c.koromiko },
    ["@markup.heading.1.markdown"] = "RenderMarkdownH1Bg",
    ["@markup.heading.2.markdown"] = "RenderMarkdownH2Bg",
    ["@markup.heading.3.markdown"] = "RenderMarkdownH3Bg",
    ["@markup.heading.4.markdown"] = "RenderMarkdownH4Bg",
    ["@markup.heading.5.markdown"] = "RenderMarkdownH5Bg",
    ["@markup.heading.6.markdown"] = "RenderMarkdownH6Bg",
    ["@markup.italic"] = { italic = opts.italics },
    ["@markup.link"] = { fg = c.tea_green },
    ["@markup.link.label"] = "SpecialChar",
    ["@markup.link.label.symbol"] = "Identifier",
    ["@markup.list"] = { fg = c.morning_glory }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"] = { fg = c.tea_green }, -- For brackets and parens.
    ["@markup.list.markdown"] = { fg = c.raw_sienna, bold = true },
    ["@markup.list.unchecked"] = { fg = c.ship_cove }, -- For brackets and parens.
    ["@markup.math"] = "Special",
    ["@markup.raw"] = "String",
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.strong"] = { fg = c.wewak, bold = true },
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
    ["@punctuation.special"] = "SpecialChar",
    ["@punctuation.special.markdown"] = { fg = c.raw_sienna }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.htmldjango"] = { fg = c.raw_sienna },
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
    ["@variable.parameter"] = { fg = c.silver_rust, italic = opts.italics }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.old_brick, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- JSON
    ["@property.json"] = { fg = c.morning_glory },

    -- JSX/TSX
    ["@tag.builtin.tsx"] = { fg = c.morning_glory },

    -- GO
    ["@keyword.coroutine.go"] = "Exception",

    -- Rust
    ["@keyword.import.rust"] = { fg = c.biloba_flower },
    ["@character.rust"] = "String",
  }
end

return M
