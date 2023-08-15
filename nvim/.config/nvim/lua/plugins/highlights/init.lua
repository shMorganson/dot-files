-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "light"

vim.cmd [[colorscheme anura]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#1B556B'})

-- -- Mason
-- highlight (0, 'MasonNormal', { ctermfg = 0, ctermbg= 15, bg = '#f7f7f7', fg= '#000000' })
-- highlight (0, 'MasonLink', { ctermfg = 4, fg = '#1B556B' })
-- highlight (0, 'MasonHeader', { ctermfg = 4, fg = '#1B556B', bold = true })
-- highlight (0, 'MasonHeading', { ctermfg = 5, fg = '#862753' })
-- highlight (0, 'MasonHighlight', { ctermfg = 10, fg = '#9CD936' })
-- highlight (0, 'MasonMutedBlock', { ctermfg = 4, fg = '#1B556B' })
-- highlight (0, 'MasonHighlightBlock', { ctermfg = 10 })
-- -- highlight (0, 'MasonMutedBlockBold', { ctermfg = 4, fg = '#1B556B', bold = true })
-- highlight (0, 'MasonHeaderSecondary', { ctermfg = 10 })
-- highlight (0, 'MasonHighlightBlockBold', { ctermfg = 4, fg = '#1B556B', bold = true })
-- highlight (0, 'MasonHighlightSecondary', { ctermfg = 10 })
-- highlight (0, 'MasonHighlightBlockSecondary', { ctermfg = 10 })
-- -- MasonHighlightBlockBoldSecondary
--
