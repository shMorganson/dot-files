-- Load all plugins
require('Nvim-Tree.lua')
require('core.plugins')
require('devicons.lua')
require('indentline.lua')
require('tools.terminal')
require('core.mappings')
require('lualine.lua')
require('core.options')
require('nvimcmp.lua')
require('renamer.lua')
require('dashboard.lua')
require('telescope.lua')
require('lsp.init')
require('treesitter.lua')
--require('alpha.lua')

-- Helpers
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- a table to access global variables

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode}
cmd "syntax enable"
cmd "syntax on"

-- Markdown Settins
g.vim_markdown_conceal = 0
g.vim_markdown_conceal_code_blocks = 0

-- Settings for plugins that use Vim as the default
-- Undotree Settings
cmd 'source ~/.config/nvim/vim/undotree.vim'

-- jsonnet Settings
cmd 'source ~/.config/nvim/vim/jsonnet.vim'
