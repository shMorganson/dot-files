local palette = require "plugins.highlights.catppuccin"

-- Theme Settings
 local catppuccin = require("catppuccin")

-- Configure the Catppuccin theme
catppuccin.setup({
  transparent_background = false,
  term_colors = true,
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "NONE",
    strings = "NONE",
    variables = "NONE",
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = "italic",
        hints = "italic",
        warnings = "italic",
        information = "italic",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
    gitsigns = true,
    nvimtree = {
      enbled = true,
      show_root = true,
    },
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    dashboard = true,
    markdown = true,
  },
})

-- Setting the theme
vim.o.background = "dark"
vim.cmd[[colorscheme catppuccin]]

-- Calling custom highlights
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
