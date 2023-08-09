-- Set local variables
local highlight = vim.api.nvim_set_hl

-- Setting the theme
vim.o.background = "light"

vim.cmd [[colorscheme dim]]

-- EXAMPLE vim.api.nvim_set_hl (0,'NvimTreeRootFolder', {fg='#A6DA95'})

-- Alpha
highlight (0, 'AlphaHeaderColor', {ctermfg = 4, fg = '#0000B2'})
highlight (0, 'AlphaFooterColor', {ctermfg = 2, fg = '#5faf00', bold = true })

-- nvim UI
highlight (0, 'DiagnosticError', { ctermbg = 15, ctermfg = 124, fg = '#af0000', bg = '#F7F7F7' })
highlight (0, 'DiagnosticWarn', { ctermbg = 15, ctermfg = 214, fg = '#ffaf00', bg = '#F7F7F7' })
highlight (0, 'DiagnosticInfo', { ctermbg = 15, ctermfg = 31, fg = '#0087af', bg = '#F7F7F7' })
highlight (0, 'DiagnosticHint', { ctermbg = 15, ctermfg = 37, fg = '#00afaf', bg = '#F7F7F7' })
highlight (0, 'StatusLine', { ctermbg = 15, bg = '#f7f7f7' })
highlight (0, 'EndOfBuffer', { ctermbg = 15, ctermfg = 15, fg = '#f7f7f7', bg = '#f7f7f7' })
highlight (0, 'VertSplit', { ctermfg = 24, ctermbg = 15, bg = '#F7F7F7', fg = '#005f87' })
highlight (0, 'SignColumn', { ctermfg = 4, ctermbg = 15, bg = '#F7F7F7', fg = '#1B556B' })
highlight (0, 'Pmenu', { ctermfg = 241, ctermbg = 254, bg = '#fefefe', fg = '#f1f1f1' })
highlight (0, 'PMenuSel', { ctermfg = 254, ctermbg = 13, bg = '#C76090', fg = '#fefefe' })

-- GitSigns
highlight (0, 'GitSignsAdd', { ctermfg = 70, ctermbg = 15, fg = '#5faf00', bg = '#F7F7F7' })
highlight (0, 'GitSignsChange', { ctermfg = 214, ctermbg = 15, fg = '#ffaf00', bg = '#F7F7F7' })
highlight (0, 'GitSignsDelete', { ctermfg = 160, ctermbg = 15, fg = '#d70000', bg = '#F7F7F7' })

-- Notify
highlight (0, 'NotifyINFOBorder', { ctermfg = 31, ctermbg = 15, fg = '#0087af', bg = '#F7F7F7' })
highlight (0, 'NotifyINFOIcon', { ctermfg = 31, ctermbg = 15, fg = '#0087af', bg = '#F7F7F7' })
highlight (0, 'NotifyINFOTitle', { bold = true })
highlight (0, 'NotifyERRORBorder', { ctermfg = 160, ctermbg = 15, fg = '#d70000', bg = '#F7F7F7' })
highlight (0, 'NotifyERRORIcon', { ctermfg = 160, ctermbg = 15, fg = '#d70000', bg = '#F7F7F7' })
highlight (0, 'NotifyERRORTitle', { bold = true })
highlight (0, 'NotifyWARNBorder', { ctermfg = 214, ctermbg = 15, fg = '#ffaf00', bg = '#F7F7F7' })
highlight (0, 'NotifyWARNIcon', { ctermfg = 214, ctermbg = 15, fg = '#ffaf00', bg = '#F7F7F7' })
highlight (0, 'NotifyWARNTitle', { bold = true })
highlight (0, 'NotifyDEBUGBorder', { ctermfg = 125, ctermbg = 15, fg = '#af005f', bg = '#F7F7F7' })
highlight (0, 'NotifyDEBUGIcon', { ctermfg = 125, ctermbg = 15, fg = '#af005f', bg = '#F7F7F7' })
highlight (0, 'NotifyDEBUGTitle', { bold = true })
highlight (0, 'NotifyTRACEBorder', { ctermfg = 37, ctermbg = 15, fg = '#00afaf', bg = '#F7F7F7' })
highlight (0, 'NotifyTRACEIcon', { ctermfg = 37, ctermbg = 15, fg = '#00afaf', bg = '#F7F7F7' })
highlight (0, 'NotifyTRACETitle', { bold = true })

-- Telescope
highlight (0, 'TelescopePromptTitle', { ctermfg = 24, bold = true, fg = '#005f87' })
highlight (0, 'TelescopePromptBorder', { ctermfg = 24, ctermbg = 15, fg = '#005f87', bg = '#F7F7F7' })
-- highlight (0, 'TelescopePromptNormal', { ctermbg=15 })
highlight (0, 'TelescopePromptPrefix', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'TelescopeResultsTitle', { ctermfg = 24, bold = true, fg = '#005f87' })
highlight (0, 'TelescopeResultsBorder', { ctermfg = 24, ctermbg = 15, fg = '#005f87', bg = '#F7F7F7' })
-- highlight (0, 'TelescopeResultsNormal', { ctermbg=15 })
highlight (0, 'TelescopePreviewTitle', { ctermfg = 70, bold = true, fg = '#5faf00' })
highlight (0, 'TelescopePreviewBorder', { ctermfg = 70, ctermbg = 15, fg = '#5faf00', bg = '#F7F7F7' })
-- highlight (0, 'TelescopePreviewNormal', { ctermbg=15 })
highlight (0, 'TelescopeSelection', { bold = true })
-- highlight (0, 'TelescopeNormal', { guifg=#ECEFF4, guibg=#363944 })
highlight (0, 'TelescopeSelectionCaret', { ctermfg = 125, fg = '#af005f' })
highlight (0, 'TelescopeMatching', { ctermfg = 125, fg = '#af005f', bold = true })

-- Mason
highlight (0, 'MasonNormal', { ctermfg = 0, ctermbg= 15, bg = '#f7f7f7', fg= '#000000' })
highlight (0, 'MasonLink', { ctermfg = 4, fg = '#1B556B' })
highlight (0, 'MasonHeader', { ctermfg = 4, fg = '#1B556B', bold = true })
highlight (0, 'MasonHeading', { ctermfg = 5, fg = '#862753' })
highlight (0, 'MasonHighlight', { ctermfg = 10, fg = '#9CD936' })
highlight (0, 'MasonMutedBlock', { ctermfg = 4, fg = '#1B556B' })
highlight (0, 'MasonHighlightBlock', { ctermfg = 10 })
-- highlight (0, 'MasonMutedBlockBold', { ctermfg = 4, fg = '#1B556B', bold = true })
highlight (0, 'MasonHeaderSecondary', { ctermfg = 10 })
highlight (0, 'MasonHighlightBlockBold', { ctermfg = 4, fg = '#1B556B', bold = true })
highlight (0, 'MasonHighlightSecondary', { ctermfg = 10 })
highlight (0, 'MasonHighlightBlockSecondary', { ctermfg = 10 })
-- MasonHighlightBlockBoldSecondary

-- Lazy
highlight (0, 'LazyH1', { ctermfg = 4, ctermbg = 254, fg = '#1B556B', bg = '#fefefe' })
-- highlight (0, 'LazyH2', { ctermfg = 4, fg = '#1B556B', bold = true })
-- LazyH2
-- LazyDir
-- LazyUrl
highlight (0, 'LazyProp', { ctermbg = 15 })
-- LazyDimmed
-- LazyLocal
-- LazyValue
highlight (0, 'LazyButton', { ctermfg = 4, fg = '#1B556B' })
-- LazyCommit
-- LazyNoCond
highlight (0, 'LazyNormal', { ctermbg = 15, bg = '#f7f7f7' })
-- LazyComment
highlight (0, 'LazySpecial', { ctermfg = 10 })
-- LazyReasonFt
-- LazyReasonCmd
-- LazyTaskError
-- LazyCommitType
-- LazyReasonKeys
-- LazyTaskOutput
-- LazyCommitIssues
-- LazyCommitScope
-- LazyReasonEvent
-- LazyReasonStart
highlight (0, 'LazyButtonActive', { ctermfg = 4, ctermbg = 254, fg = '#1B556B', bg = '#fefefe' })
-- highlight (0, 'LazyProgressDone', { ctermfg = 10 })
-- LazyProgressTodo
-- LazyReasonImport
-- LazyReasonPlugin
-- LazyReasonSource
-- LazyReasonRuntime
