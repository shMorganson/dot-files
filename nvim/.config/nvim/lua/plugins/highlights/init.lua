require("plugins.highlights.catppuccin")
-- Setting the theme
vim.o.background = "dark"

-- Everforest Settings
vim.g.everforest_sign_column_background = "none"
vim.g.everforest_show_eob = 0

vim.cmd('colorscheme everforest')

-- Calling custom highlights
-- require("plugins.highlights.custom_highlighting")
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
