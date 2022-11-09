-- Setting the theme
vim.o.background = "light"

-- Calling the theme settings.
require("plugins.highlights.ayu")

vim.cmd [[colorscheme ayu-nvim]]

require("gruvbox").setup({
  undercurl = false,
  underline = false,
  bold = true,
  italic = false,
  strikethrough = false,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})


-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = false

-- Load the colorscheme
-- require('nord').set()

-- Calling custom highlights
-- vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
