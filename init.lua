-- Load all plugins
require('lspconfig.lua')
require('Nvim-Tree.lua')
require('core.plugins')
require('devicons.lua')
require('indentline.lua')
require('tools.terminal')
require('core.mappings')
require('lualine.lua')
require('core.options')
require('nvimcmp.lua')
require('lspinstaller.lua')
require('renamer.lua')
require('dashboard.lua')
require('telescope.lua')

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

-- TreeSitter Settings
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode}
cmd "syntax enable"
cmd "syntax on"

-- Markdown Settins
g.vim_markdown_conceal = 0
g.vim_markdown_conceal_code_blocks = 0

-- Undotree Settings
cmd 'source ~/.config/nvim/vim/undotree.vim'

-- ALE Settings
cmd 'source ~/.config/nvim/vim/ale.vim'

-- jsonnet Settings
cmd 'source ~/.config/nvim/vim/jsonnet.vim'
