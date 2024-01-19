-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "dark"

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = false,
  underline = false,
  bold = true,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
    EndOfBuffer = { link = "GruvboxBg0" },
    TelescopePromptBorder = { link = "GruvboxBlue" },
    TelescopePromptNormal = { link = "GruvboxFg1" },
    TelescopePromptTitle  = { bg = "#458588", fg = "#EBDBB2" },
    TelescopeResultsTitle = { bg = "#B16286", fg = "#EBDBB2" },
    TelescopeResultsBorder = { link = "GruvboxPurple" },
    TelescopeResultsNormal = { link = "GruvboxFg1" },
    TelescopePreviewTitle = { bg = "#689D6A", fg = "#EBDBB2" },
    TelescopePreviewBorder = { link = "GruvboxAqua" },
    TelescopePreviewNormal = { link = "GruvboxFg1" },
    TelescopePromptCounter = { link = "GruvboxBg4" },
  },
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd [[colorscheme gruvbox]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#1B556B'})

highlight (0, 'StatusLine', { link = "GruvboxBg0" })
highlight (0, 'AlphaFooterColor', { link = "GruvboxGreen" })
highlight (0, 'AlphaHeaderColor', { link = "GruvboxAqua" })

