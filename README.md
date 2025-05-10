# 🟣 Jellybeans.nvim

A port of the jellybeans colorscheme for Neovim, written in Lua. Comes with multiple palettes.

_Vibrant Dark (Default)_
![Vibrant Dark](./images/default-vibrant.png)

_Vibrant Light (`jellybeans_light`)_
![Vibrant Light](./images/default-vibrant-light.png)

_Muted Dark (`jellybeans_muted`)_
![Muted Dark](./images/muted.png)

_Muted Light (`jellybeans_muted_light`)_
![Muted Light](./images/muted-light.png)

_Mono Dark (`jellybeans_mono`)_
![Mono Dark](./images/mono.png)

_Mono Light (`jellybeans_mono_light`)_
![Mono Light](./images/mono-light.png)

## ✨ Features

- Written in Lua
- Highly configurable
- Treesitter support
- LSP support
- [Support for popular plugins](https://github.com/WTFox/jellybeans.nvim/tree/main/lua/jellybeans/groups)

## 📦 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "wtfox/jellybeans.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

```lua
-- Default (vibrant dark)
vim.cmd[[colorscheme jellybeans]]

-- Vibrant light
vim.cmd[[colorscheme jellybeans-light]]

-- Muted dark
vim.cmd[[colorscheme jellybeans-muted]]

-- Muted light
vim.cmd[[colorscheme jellybeans-muted-light]]

-- Mono dark
vim.cmd[[colorscheme jellybeans-mono]]

-- Mono light
vim.cmd[[colorscheme jellybeans-mono-light]]
```

## 🛠️ Configuration

Jellybeans ships with the following defaults

```lua
{
  transparent = false,
  italics = true,
  flat_ui = true, -- toggles "flat UI" for pickers
  background = {
    dark = "jellybeans", -- default dark palette
    light = "jellybeans_light", -- default light palette
  },
  plugins = {
    all = false,
    auto = true, -- will read lazy.nvim and apply the colors for plugins that are installed
  },
  on_highlights = function(highlights, colors)
  end,
  on_colors = function(colors)
  end,
}
```

> **Deprecated**: `style` and `palette` are no longer used. Instead, use the `background` table to set the default palette for dark and light backgrounds. This allows for more flexibility for future palettes and for your personal preferences.

### Available Palettes

Jellybeans offers two palette variants, each with dark and light modes:

- **Vibrant** (default): The classic jellybeans with rich, saturated colors

  - Dark: `jellybeans` (default)
  - Light: `jellybeans_light`

- **Muted**: A lower saturation, paper-like theme

  - Dark: `jellybeans_muted`
  - Light: `jellybeans_muted_light`

- **Mono**: A monochrome palette with a dark and light mode

  - Dark: `jellybeans_mono`
  - Light: `jellybeans_mono_light`

  The mono palette uses two accent colors to provide visual distinction while maintaining a cohesive monochromatic look:

  - `accent_color_1`: Used for types and constants (defaults to a muted brown)
  - `accent_color_2`: Used for functions (defaults to a muted blue)

You can easily override the color palette. For example, here's how to change the background color for OLED:

```lua
  opts = {
    on_colors = function(c)
      local light_bg = "#ffffff"
      local dark_bg = "#000000"
      c.background = vim.o.background == "light" and light_bg or dark_bg
    end,
  }
```

To customize the accent colors for the mono palette:

```lua
  opts = {
    on_colors = function(c)
      -- Custom accent colors for mono palette
      c.accent_color_1 = vim.o.background == "dark" and "#876543"  -- Custom color for types and constants
      c.accent_color_2 = vim.o.background == "dark" and  "#345678"  -- Custom color for functions
    end,
  }
```

If you want more control over highlight groups, that is also possible:

```lua
  opts = {
    on_highlights = function(hl, c)
      hl.Constant = { fg = "#00ff00", bold = true }
    end,
  },
```

### Lualine

The theme includes a [Lualine](https://github.com/nvim-lualine/lualine.nvim) theme. To enable it:

```lua
require('lualine').setup {
    options = {
        theme = 'jellybeans'
    }
}
```

## 🔌 Extras Support

- FZF
- Ghostty
- Wezterm
- Windows Terminal
- Yazi
- and [more...](https://github.com/WTFox/jellybeans.nvim/tree/main/extras)

## 💕 Inspirations

- [jellybeans.vim](https://github.com/nanotech/jellybeans.vim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) by [Folke](https://githubcom/folke)
- [jellybeans-nvim](https://github.com/metalelf0/jellybeans-nvim) by [metalelf0](https://github.com/metalelf0)
- [jbeans](https://github.com/scajanus/jbeans) by [scajanus](https://github.com/scajanus)

## 🌟 Star History

<a href="https://star-history.com/#wtfox/jellybeans.nvim&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=wtfox/jellybeans.nvim&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=wtfox/jellybeans.nvim&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=wtfox/jellybeans.nvim&type=Date" />
 </picture>
</a>
