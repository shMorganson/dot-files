-- Load all plugins
require('lspconfig.lua')
require('Nvim-Tree.lua')
require('core.plugins')
--require('nord').set()
require('devicons.lua')
require('indentline.lua')
require('tools.terminal')
require('core.mappings')
require('lualine.lua')
require('core.options')
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

-- Colorsheme for nvim
cmd [[colorscheme onenord]]

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

-- Undotree Settings
cmd 'source ~/.config/nvim/vim/undotree.vim'

-- ALE Settings
cmd 'source ~/.config/nvim/vim/ale.vim'

-- jsonnet Settings
cmd 'source ~/.config/nvim/vim/jsonnet.vim'
