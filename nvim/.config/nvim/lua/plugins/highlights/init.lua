-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "light"

vim.cmd [[colorscheme PaperColor]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#A6DA95'})

-- nvim UI
-- highlight (0, 'StatusLine', {ctermbg = 15, bg = '#2E3440'})
-- highlight (0, 'EndOfBuffer', {ctermfg = 15, bg = '#2E3440', fg = '#2E3440'})

-- Alpha Highlights
highlight (0, 'AlphaHeaderColor', {ctermfg = 31, fg = '#0087af'})
highlight (0, 'AlphaFooterColor', {ctermfg = 70, fg = '#5faf00'})
highlight (0, 'DiagnosticError', { ctermbg = 255, ctermfg = 124, fg = '#af0000', bg = '#EEEEEE' })
highlight (0, 'DiagnosticWarn', { ctermbg = 255, ctermfg = 214, fg = '#ffaf00', bg = '#EEEEEE' })
highlight (0, 'DiagnosticInfo', { ctermbg = 255, ctermfg = 31, fg = '#0087af', bg = '#EEEEEE' })
highlight (0, 'DiagnosticHint', { ctermbg = 255, ctermfg = 37, fg = '#00afaf', bg = '#EEEEEE' })
highlight (0, 'StatusLine', { ctermbg = 255, bg = '#EEEEEE' })
highlight (0, 'EndOfBuffer', { ctermbg = 255, ctermfg = 255, fg = '#EEEEEE', bg = '#EEEEEE' })
highlight (0, 'NvimTreeRootFolder', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'NvimTreeOpenedFile', { fg = '#B48EAD' })
highlight (0, 'NvimTreeIndentMarker', { ctermfg = 250, fg = '#bcbcbc' })
highlight (0, 'NvimTreeFolderIcon', { ctermfg = 214, fg = "#ffaf00" })
highlight (0, 'VertSplit', { ctermfg = 24, ctermbg = 255, bg = '#EEEEEE', fg = '#005f87' })
