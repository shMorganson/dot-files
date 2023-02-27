-- Setting the theme
vim.o.background = "dark"

-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {
--     EndOfBuffer = {bg = "#282828", fg = "#282828"},
--     AlphaFooterColor = {fg = "#b8bb26"},
--     AlphaHeaderColor = {fg = "#83a598"},
--     StatusLine = {bg = "#282828"},
--     IndentBlanklineChar = {fg = "#b8bb26"},
--     IndentBlanklineSpaceChar = {fg = "#928374"},
--     IndentBlanklineContextChar = {fg = "#fe8019"},
--   },
--   dim_inactive = false,
--   transparent_mode = false,
-- })

vim.cmd [[colorscheme gruvbox]]
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/gruvbox.vim'
-- vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
