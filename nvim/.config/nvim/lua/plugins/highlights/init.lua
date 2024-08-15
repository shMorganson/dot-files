-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "light"

require("rose-pine").setup({
    variant = "main", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
      TelescopePromptBorder = { fg = "subtle", bg = "surface" },
      TelescopePromptNormal = { bg = "surface" },
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
    end,
})

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
vim.cmd [[colorscheme anura]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#1B556B'})
