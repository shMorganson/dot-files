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

-- Sonokai Theme Settings
vim.g.sonokai_style = 'default'  -- Available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_disable_italic_comment = 0
vim.g.sonokai_diagnostic_text_highlight = 1
vim.g.sonokai_current_word = 'underline'  -- Available values:   `'grey background'`, `'bold'`, `'underline'`, `'italic'`
vim.g.sonokai_diagnostic_line_highlight = 1
vim.g.sonokai_diagnostic_virtual_text = 1

-- Setting the theme
vim.o.background = "dark"
vim.cmd[[colorscheme sonokai]]

-- Calling custom highlights
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
