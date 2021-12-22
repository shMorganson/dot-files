local opt = vim.opt -- to set options.
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g     -- a table to access global variables.

opt.completeopt = "menuone,noselect"
opt.expandtab = true                -- Use spaces instead of tabs
opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.shiftwidth = 2                 -- Size of an indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with caitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = 2                     -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.wrap = false                    -- Disable line wrap
opt.mouse = 'a'                     -- Enables mouse support
opt.confirm = true                  -- Confirm before closing unsaved file
opt.cmdheight = 2                   -- Set the command heght to 2 lines
opt.showcmd = true

-- Theme Settings
local catppuccin = require("catppuccin")

-- Configure the theme
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
      markdown = false,
    },
})

-- OneNord Settings
local onenord = require("onenord")

onenord.setup({
  style = "dark",      -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true,      -- Split window borders
  italics = {
    comments = true,   -- Italic comments
  },
})

-- Setting the theme
cmd[[colorscheme catppuccin]]
