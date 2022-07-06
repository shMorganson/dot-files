-- Setting the theme
-- vim.o.background = "light"

-- require('ayu').colorscheme()

-- require('ayu').setup({
--      mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--      overrides = {
--        NvimTreeFolderName = { fg = '#8a9199' }
--    }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
-- })

-- Everforest Settings
--vim.g.everforest_sign_column_background = "none"
--vim.g.everforest_show_eob = 0

-- vim.g.ayucolor="light"
vim.cmd('colorscheme spaceduck')

-- Calling custom highlights
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'
