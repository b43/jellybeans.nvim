jellybeans.nvim: another Lua port of Jellybeans for Neovim.

## Notes

- Rewritten for more accurate color matching.
- Added Tree-sitter support (focused on Go, Ruby, and TypeScript).
- Added highlighting for used plugins.

## Supported plugins

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## Installation

```lua
{
  "b43/jellybeans.nvim",
  lazy = false,
  name = "jellybeans",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("jellybeans")
  end,
  dependencies = {
    "rktjmp/lush.nvim",
  },
},
```

## Misc

### indent-blankline

```lua
{
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPost",
  main = "ibl",
  config = function()
    local highlight = {
      "IblOdd",
      "IblEven",
    }
    require("ibl").setup({
      scope = { enabled = false },
      indent = { char = "│", highlight = highlight },
      exclude = { filetypes = { "help" } },
    })
  end,
},
```

### lualine

```lua
require('lualine').setup {
    options = {
        theme = 'jellybeans'
    }
}
```

## Inspirations

- [jellybeans.vim](https://github.com/nanotech/jellybeans.vim) - Thanks, I've been using this theme since 2014.
- [jellybeans-nvim](https://github.com/metalelf0/jellybeans-nvim) by [metalelf0](https://github.com/metalelf0)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) by [Folke](https://githubcom/folke)
- [jellybeans.nvim](https://github.com/WTFox/jellybeans.nvim) by [WTFox](https://github.com/WTFox)
