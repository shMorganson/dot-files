-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "light"

vim.cmd [[colorscheme PaperColor]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#A6DA95'})

-- Alpha
highlight (0, 'AlphaHeaderColor', {ctermfg = 31, fg = '#0087af'})
highlight (0, 'AlphaFooterColor', {ctermfg = 70, fg = '#5faf00', bold = true })

-- nvim UI
highlight (0, 'DiagnosticError', { ctermbg = 255, ctermfg = 124, fg = '#af0000', bg = '#EEEEEE' })
highlight (0, 'DiagnosticWarn', { ctermbg = 255, ctermfg = 214, fg = '#ffaf00', bg = '#EEEEEE' })
highlight (0, 'DiagnosticInfo', { ctermbg = 255, ctermfg = 31, fg = '#0087af', bg = '#EEEEEE' })
highlight (0, 'DiagnosticHint', { ctermbg = 255, ctermfg = 37, fg = '#00afaf', bg = '#EEEEEE' })
highlight (0, 'StatusLine', { ctermbg = 255, bg = '#EEEEEE' })
highlight (0, 'EndOfBuffer', { ctermbg = 255, ctermfg = 255, fg = '#EEEEEE', bg = '#EEEEEE' })
highlight (0, 'VertSplit', { ctermfg = 24, ctermbg = 255, bg = '#EEEEEE', fg = '#005f87' })

-- NvimTree
highlight (0, 'NvimTreeRootFolder', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'NvimTreeOpenedFile', { fg = '#B48EAD' })
highlight (0, 'NvimTreeIndentMarker', { ctermfg = 250, fg = '#bcbcbc' })
highlight (0, 'NvimTreeFolderIcon', { ctermfg = 214, fg = "#ffaf00" })

-- GitSigns
highlight (0, 'GitSignsAdd', { ctermfg = 70, ctermbg = 255, fg = '#5faf00', bg = '#eeeeee' })
highlight (0, 'GitSignsChange', { ctermfg = 214, ctermbg = 255, fg = '#ffaf00', bg = '#eeeeee' })
highlight (0, 'GitSignsDelete', { ctermfg = 160, ctermbg = 255, fg = '#d70000', bg = '#eeeeee' })

-- Notify
highlight (0, 'NotifyINFOBorder', { ctermfg = 31, ctermbg = 255, fg = '#0087af', bg = '#eeeeee' })
highlight (0, 'NotifyINFOIcon', { ctermfg = 31, ctermbg = 255, fg = '#0087af', bg = '#eeeeee' })
highlight (0, 'NotifyINFOTitle', { bold = true })
highlight (0, 'NotifyERRORBorder', { ctermfg = 160, ctermbg = 255, fg = '#d70000', bg = '#eeeeee' })
highlight (0, 'NotifyERRORIcon', { ctermfg = 160, ctermbg = 255, fg = '#d70000', bg = '#eeeeee' })
highlight (0, 'NotifyERRORTitle', { bold = true })
highlight (0, 'NotifyWARNBorder', { ctermfg = 214, ctermbg = 255, fg = '#ffaf00', bg = '#eeeeee' })
highlight (0, 'NotifyWARNIcon', { ctermfg = 214, ctermbg = 255, fg = '#ffaf00', bg = '#eeeeee' })
highlight (0, 'NotifyWARNTitle', { bold = true })
highlight (0, 'NotifyDEBUGBorder', { ctermfg = 125, ctermbg = 255, fg = '#af005f', bg = '#eeeeee' })
highlight (0, 'NotifyDEBUGIcon', { ctermfg = 125, ctermbg = 255, fg = '#af005f', bg = '#eeeeee' })
highlight (0, 'NotifyDEBUGTitle', { bold = true })
highlight (0, 'NotifyTRACEBorder', { ctermfg = 37, ctermbg = 255, fg = '#00afaf', bg = '#eeeeee' })
highlight (0, 'NotifyTRACEIcon', { ctermfg = 37, ctermbg = 255, fg = '#00afaf', bg = '#eeeeee' })
highlight (0, 'NotifyTRACETitle', { bold = true })

-- Telescope
highlight (0, 'TelescopePromptTitle', { ctermfg = 24, bold = true, fg = '#005f87' })
highlight (0, 'TelescopePromptBorder', { ctermfg = 24, ctermbg = 255, fg = '#005f87', bg = '#eeeeee' })
-- highlight (0, 'TelescopePromptNormal', { ctermbg=15 })
highlight (0, 'TelescopePromptPrefix', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'TelescopeResultsTitle', { ctermfg = 24, bold = true, fg = '#005f87' })
highlight (0, 'TelescopeResultsBorder', { ctermfg = 24, ctermbg = 255, fg = '#005f87', bg = '#eeeeee' })
-- highlight (0, 'TelescopeResultsNormal', { ctermbg=15 })
highlight (0, 'TelescopePreviewTitle', { ctermfg = 70, bold = true, fg = '#5faf00' })
highlight (0, 'TelescopePreviewBorder', { ctermfg = 70, ctermbg = 255, fg = '#5faf00', bg = '#eeeeee' })
-- highlight (0, 'TelescopePreviewNormal', { ctermbg=15 })
highlight (0, 'TelescopeSelection', { ctermbg = 252, bg = '#d0d0d0' })
-- highlight (0, 'TelescopeNormal', { guifg=#ECEFF4, guibg=#363944 })
highlight (0, 'TelescopeSelectionCaret', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'TelescopeMatching', { ctermfg = 125, fg = '#af005f', bold = true })
