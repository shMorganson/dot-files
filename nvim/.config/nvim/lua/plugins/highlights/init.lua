local palette = require "plugins.highlights.catppuccin"

-- Nord Theme Settings
--vim.g.nord_contrast = true
--vim.g.nord_borders = false
--vim.g.nord_disable_background = false
--vim.g.nord_italic = false

-- Load the colorscheme
--require('nord').set()

-- Setting the theme
--vim.o.background = "dark"
vim.cmd[[colorscheme inspired-github]]

-- Calling custom highlights
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
