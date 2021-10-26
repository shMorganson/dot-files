-- Load all plugins
require('lspconfig.lua')
require('Nvim-Tree.lua')
require('plugins')
require('nord').set()
require('devicons.lua')
require('indentline.lua')
require('tools.terminal')
require('mappings')
require('lualine.lua')
require('options')
require('nvimcmp.lua')

-- Helpers
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Nord Theme Options
g.nord_contrast = true          -- Nord theme settings
g.nord_borders = false          -- Nord theme settings
g.nord_disable_background = false  -- Nord theme settings
g.nord_italic = true           -- Nord theme settings

-- TreeSitter Settings
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-- LSP Config Settings
local lsp = require 'lspconfig'
local lspfuzzy = require 'lspfuzzy'

-- We use the default settings for ccls and pylsp: the option table can stay empty
lsp.ccls.setup {}
lsp.pylsp.setup {}
lspfuzzy.setup {}  -- Make the LSP client use FZF instead of the quickfix list
lsp.bashls.setup{}

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode}
cmd "syntax enable"
cmd "syntax on"

-- Markdown Settins
g.vim_markdown_conceal = 0
g.vim_markdown_conceal_code_blocks = 0

-- MiniMap Settings
cmd 'source ~/.config/nvim/vim/minimap.vim'

-- COC Settings
-- cmd 'source ~/.config/nvim/vim/coc.vim'

-- Undotree Settings
cmd 'source ~/.config/nvim/vim/undotree.vim'

-- ALE Settings
cmd 'source ~/.config/nvim/vim/ale.vim'
