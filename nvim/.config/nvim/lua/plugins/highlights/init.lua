-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "dark"

vim.cmd [[colorscheme nord]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#A6DA95'})

-- nvim UI
-- highlight (0, 'StatusLine', {ctermbg = 15, bg = '#2E3440'})
-- highlight (0, 'EndOfBuffer', {ctermfg = 15, bg = '#2E3440', fg = '#2E3440'})

-- Alpha Highlights
highlight (0, 'AlphaHeaderColor', {ctermfg = 5, fg = '#B48EAD'})
highlight (0, 'AlphaFooterColor', {ctermfg = 10, fg = '#A3BE8C'})
highlight (0, 'DiagnosticError', { fg = '#BF616A', bg = '#3B4252' })
highlight (0, 'DiagnosticWarn', { fg = '#EBCB8B', bg = '#3B4252' })
highlight (0, 'DiagnosticInfo', { fg = '#5E81AC', bg = '#3B4252' })
highlight (0, 'DiagnosticHint', { fg = '#B48EAD', bg = '#3B4252' })
highlight (0, 'StatusLine', { bg = '#2E3440' })
highlight (0, 'EndOfBuffer', { fg = '#2E3440', bg = '#2E3440'})
highlight (0, 'NvimTreeRootFolder', { fg = '#8FBCBB', bold = true })
highlight (0, 'NvimTreeOpenedFile', { fg = '#B48EAD' })
highlight (0, 'NvimTreeIndentMarker', { fg = '#434C5E' })
