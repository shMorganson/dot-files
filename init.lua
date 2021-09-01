-- Load all plugins
require('lspconfig.lua')
require('Nvim-Tree.lua')
require('plugins')
require('nord').set()
require('devicons.lua')
require('lualine.lua')

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

-- Options
g.nord_contrast = true          -- Nord theme settings
g.nord_borders = false          -- Nord theme settings
g.nord_disable_background = false  -- Nord theme settings
g.nord_italic = false           -- Nord theme settings
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
opt.shiftwidth = 2                  -- Size of an indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = 2                     -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap
opt.mouse = 'a'                     -- Enables mouse support
opt.confirm = true                  -- Confirm before closing unsaved file
opt.cmdheight = 2                   -- Set the command heght to 2 lines
opt.showcmd = true

-- Mappings
map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Nvimtree mapping
map('', '<leader>n', '<cmd>NvimTreeToggle<CR>')
map('', '<leader>r', '<cmd>NvimTreeRefresh<CR>')
map('', '<leader>f', '<cmd>NvimTreeFindFile<CR>')

-- TreeSitter Settings
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

local lsp = require 'lspconfig'
local lspfuzzy = require 'lspfuzzy'

-- We use the default settings for ccls and pylsp: the option table can stay empty
lsp.ccls.setup {}
lsp.pylsp.setup {}
lspfuzzy.setup {}  -- Make the LSP client use FZF instead of the quickfix list

map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-------------------- COMMANDS ------------------------------
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode}
cmd "syntax enable"
cmd "syntax on"

-- MiniMap Settings
g.minimap_width = 10
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1
g.minimap_block_filetypes = {'fugitive', 'nerdtree', 'tagbar', 'nvimtree'}
g.minimap_block_buftypes = {'nofile', 'nowrite', 'quickfix', 'terminal', 'prompt', 'nerdtree', 'nvimtree'}
g.minimap_highlight_range = 10
g.minimap_git_colors = 1
g.minimap_diffadd_color = 'DiffAdd'
g.minimap_diffremove_color = 'DiffDelete'
g.minimap_diff_color = 'DiffChange'
g.minimap_highlight_search = 1
g.minimap_search_color = 'Search'
g.minimap_search_color_priority = 120
g.minimap_cursor_color_priority = 110
g.minimap_git_color_priority = 100
g.minimap_highlight = 'Title'
g.minimap_base_highlight = 'Normal'

-- Markdown Settins
g.vim_markdown_conceal = 0
g.vim_markdown_conceal_code_blocks = 0

-- Fugitive Settings


