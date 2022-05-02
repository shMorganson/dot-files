-- Loading the plugins
require('plugins.highlights.init')
require('plugins.devicons.lua')
require('gitsigns').setup()
require('plugins.lualine.lua')
require('plugins.nvimcmp.lua')
require('plugins.telescope.lua')
require('plugins.lsp.init')
require('plugins.treesitter.lua')
require('plugins.autocommands.lua')
require('plugins.autopairs.lua')
require('plugins.project.lua')
require('plugins.nvimtree.lua')
require('plugins.alpha.lua')
require('plugins.symbols-outlines.lua')
require('plugins.indentline.lua')
require('plugins.tabline.lua')
require('plugins.dressing.lua')
require('plugins.toggleterm.lua')
require('plugins.nvim-notify.lua')

-- Loading Vim Script plugins
vim.cmd 'source ~/.config/nvim/lua/plugins/undotree/undotree.vim'
vim.cmd 'source ~/.config/nvim/lua/plugins/vimwiki/vimwiki.vim'
vim.cmd 'source ~/.config/nvim/lua/plugins/markdownpreview/markdownpreview.vim'
vim.cmd 'source ~/.config/nvim/lua/plugins/markdown/markdown.vim'
vim.cmd 'source ~/.config/nvim/lua/plugins/jsonnet/jsonnet.vim'
