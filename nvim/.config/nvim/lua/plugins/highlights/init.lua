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

-- Telescope
  -- Prompt
    highlight (0, 'TelescopePromptTitle', { ctermfg=6, bold = true })
--     highlight TelescopePromptBorder ctermfg=4 ctermbg=15
--     highlight TelescopePromptNormal ctermbg=15
    highlight (0, 'TelescopePromptPrefix', { ctermfg=5 })

  -- Results
    highlight (0, 'TelescopeResultsTitle', { ctermfg=2, bold = true })
--     highlight TelescopeResultsBorder ctermfg=2 ctermbg=15
--     highlight TelescopeResultsNormal ctermbg=15
-- "
--    " Preview
    highlight (0, 'TelescopePreviewTitle', { ctermfg=3, bold = true })
--      highlight TelescopePreviewBorder ctermfg=13 ctermbg=15
--      highlight TelescopePreviewNormal ctermbg=15
-- "
--    " Other
--      highlight TelescopeSelection cterm=bold
--      "highlight TelescopeNormal guifg=#ECEFF4 guibg=#363944
   highlight (0, 'TelescopeSelectionCaret', { ctermfg=5 })

