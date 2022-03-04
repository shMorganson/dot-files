-- Load Core
require('core.mappings')
require('core.options')
require('core.packer')
require('plugins')
require('tools.terminal')

-- Helpers
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- a table to access global variables

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disaled in visual mode}
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

-- vimwiki Settings
cmd 'source ~/.config/nvim/vim/vimwiki.vim'

-- Markdown Preview Settings
cmd 'source ~/.config/nvim/vim/markdownpreview.vim'
