-- Setting the theme
vim.o.background = "light"

-- vim.g.material_style = "lighter"
 vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

-- require("catppuccin").setup()
-- require("gruvbox").setup({
--   undercurl = false,
--   underline = false,
--   bold = true,
--   italic = false,
--   strikethrough = false,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   overrides = {
--     SignColumn = {bg = "#282828"},
--     GitSignsAdd = {bg = "#282828", fg = "#98971a"},
--     GitSignsChange = {bg = "#282828", fg = "#689d6a"},
--     GitSignsDelete = {bg = "#282828", fg = "#cc241d"},
--     StatusLine = {bg = "#282828"},
--   },
--   dim_inactive = false,
--   transparent_mode = false,
-- })

require("ayu").setup({
    style = "light", -- "dark" | "light"
    transparent = false, -- transparent background
    extend = {
      AlphaFooterColor = { fg = "#86B300" },
      AlphaHeaderColor = { fg = "#399EE6" },
      VimwikiHeader1 = { fg = "#399EE6" },
      VimwikiHeader2 = { fg = "#86B300" },
      VimwikiHeader3 = { fg = "#A37ACC" },
      VimwikiHeader4 = { fg = "#4CBF99" },
      VimwikiHeader5 = { fg = "#F07171" },
      VimwikiHeader6 = { fg = "#F2AE49" },
        -- ExampleHighlight = { fg = "#FFFFFF", bg = "#000000" },
        -- ExampleFunctionHighlight = function() return { fg = "#FFFFFF", bg = "#000000" } end,
    }, -- custom highlight groups
})


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

vim.cmd [[colorscheme ayu-nvim]]

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
