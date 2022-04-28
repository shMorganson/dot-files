require("plugins.highlights.catppuccin")
-- Setting the theme
vim.o.background = "dark"
vim.cmd('colorscheme catppuccin')


-- Calling custom highlights
-- require("plugins.highlights.custom_highlighting")
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
