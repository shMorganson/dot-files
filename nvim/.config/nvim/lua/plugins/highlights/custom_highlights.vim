" Neovim Highlights
" "highlight Comment guifg=#686f9a ctermfg=60 gui=italic
" " highlight Normal guibg=NONE guifg=NONE
" "highlight LineNr guifg=#7a5ccc
highlight EndOfBuffer ctermfg=15 ctermbg=15
highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=7
" "highlight BufferLineSeparator guifg=#172030
highlight SignColumn ctermbg=15
" highlight DiagnosticSignHint guifg=#8EC07C guibg=#282828 ctermbg=235 ctermfg=108
" highlight DiagnosticSignInfo guifg=#83A598 guibg=#282828 ctermbg=235 ctermfg=109
" highlight DiagnosticSignWarn guifg=#FABD2F guibg=#282828 ctermbg=235 ctermfg=214
" highlight DiagnosticSignError guifg=#FB4934 guibg=#282828 ctermbg=235 ctermfg=167
" highlight DiagnosticHint guifg=#8EC07C guibg=#282828
" highlight StatusLine guibg=#282828
" highlight CursorLine guibg=#30365F ctermbg=237 gui=bold
  
  " Pmenu
    highlight Pmenu ctermbg=254
    highlight PmenuSel ctermbg=12

  " Float
    " highlight FloatShadow guibg=#282828 blend=0
    " highlight FloatShadowThrough guibg=#282828 blend=0
    " highlight FloatTitle guifg=#83A598 ctermfg=12
    " highlight FloatermBorder guibg=None guifg=#10737B
    highlight FloatBorder ctermbg=254 ctermfg=254

" Treesitter
" highlight @function.call guifg=#FABD2F ctermfg=214
" highlight! link TSField SDDarkPurple2
"
" GitSigns Highlights
highlight GitSignsAdd ctermbg=15 ctermfg=2
highlight GitSignsChange ctermbg=15 ctermfg=3
highlight GitSignsDelete ctermbg=15 ctermfg=1
"
" Telescope Highlights
 " Prompt
    highlight TelescopePromptTitle ctermfg=4 cterm=bold
    highlight TelescopePromptBorder ctermfg=4 ctermbg=15
    highlight TelescopePromptNormal ctermbg=15
    highlight TelescopePromptPrefix ctermfg=5
"
  " Results
    highlight TelescopeResultsTitle ctermfg=2 cterm=bold
    highlight TelescopeResultsBorder ctermfg=2 ctermbg=15
    highlight TelescopeResultsNormal ctermbg=15
"
   " Preview
     highlight TelescopePreviewTitle ctermfg=13 cterm=bold
     highlight TelescopePreviewBorder ctermfg=13 ctermbg=15
     highlight TelescopePreviewNormal ctermbg=15
"
   " Other
     highlight TelescopeSelection cterm=bold
     "highlight TelescopeNormal guifg=#ECEFF4 guibg=#363944
     highlight TelescopeSelectionCaret ctermfg=5 cterm=NONE
     "highlight TelescopeMatching guifg=#FA8D3E gui=bold
"
" " NvimTree Highlights
highlight NvimTreeFolderIcon ctermfg=3
"   "highlight NvimTreeNormal guibg=#282D32
"   "highlight NvimTreeVertSplit guifg=#4C566A guifg=#4C566A
"   "highlight NvimTreeEmptyFolderName guifg=#D8DEE9
" highlight NvimTreeIndentMarker guifg=#458588 ctermfg=66
" highlight NvimTreeFolderName guifg=#EBDBB2 ctermfg=223
highlight NvimTreeRootFolder ctermfg=5
" highlight NvimTreeOpenedFolderName guifg=#EBDBB2 ctermfg=223
" highlight NvimTreeOpenedFile guifg=#FFAA33
highlight NvimTreeGitNew ctermfg=2
highlight NvimTreeGitDirty ctermfg=3
highlight NvimTreeGitMerge ctermfg=208
highlight NvimTreeGitStaged ctermfg=109
highlight NvimTreeGitDeleted ctermfg=1
highlight NvimTreeGitRename ctermfg=172
highlight! link NvimTreeCursorLine NvimTreeNormal

" vimwiki Highlighting
highlight VimwikiHeader1 ctermfg=4 cterm=bold
highlight VimwikiHeader2 ctermfg=2 cterm=bold
highlight VimwikiHeader3 ctermfg=6 cterm=bold
highlight VimwikiHeader4 ctermfg=1 cterm=bold
highlight VimwikiHeader5 ctermfg=5 cterm=bold
highlight VimwikiHeader6 ctermfg=3 cterm=bold
"
" Alpha Highlights
highlight AlphaFooterColor ctermfg=2
highlight AlphaHeaderColor ctermfg=4

" Notify
 " Error
  highlight NotifyERRORBorder guifg=#CC241D ctermfg=124
  highlight NotifyERRORIcon guifg=#FB4934 ctermfg=167
  highlight NotifyERRORTitle guifg=#FB4934 ctermfg=167
  highlight NotifyERRORBody guifg=#EBDBB2 ctermfg=223

  " Warn
   highlight NotifyWARNBorder guifg=#FE8019 ctermfg=208
   highlight NotifyWARNIcon guifg=#FE8019 ctermfg=208
   highlight NotifyWARNTitle guifg=#FE8019 ctermfg=208
   highlight NotifyWARNBody guifg=#EBDBB2 ctermfg=223

  " Info
   highlight NotifyINFOBorder guifg=#FABD2F ctermfg=214
   highlight NotifyINFOIcon guifg=#FABD2F ctermfg=214
   highlight NotifyINFOTitle guifg=#FABD2F ctermfg=214
   highlight NotifyINFOBody guifg=#EBDBB2 ctermfg=223

   " Debug
   highlight NotifyDEBUGBorder guifg=#B16286 ctermfg=132
   highlight NotifyDEBUGIcon guifg=#B16286 ctermfg=132
   highlight NotifyDEBUGTitle guifg=#B16286 ctermfg=132
   highlight NotifyDEBUGBody guifg=#EBDBB2 ctermfg=223
"
   " Trace
   highlight NotifyTRACEBorder guifg=#458588 ctermfg=66
   highlight NotifyTRACEIcon guifg=#458588 ctermfg=66
   highlight NotifyTRACETitle guifg=#458588 ctermfg=66
   highlight NotifyTRACEBody guifg=#EBDBB2 ctermfg=223

 " DevIcon
   highlight DevIconterraform guifg=#005F00 ctermfg=22
   highlight DevIconbrewfile guifg=#878700 ctermfg=100
   highlight DevIconsh guifg=#5F87AF ctermfg=67

" Indentline
"   highlight IndentBlanklineChar guifg=#30365F

" TabLine
" highlight TabLine guibg=#3c3836 guifg=#A89984 gui=NONE
" highlight TabLineSel guifg=#ebdbb2 guibg=#282828 gui=bold
" highlight TabLineFill guifg=#ECEFF4 guibg=#3C3836
" highlight TabLineSeparatorActive guifg=#83A598 guibg=#282828
" highlight TabLineSeparatorInactive guifg=#A89984 guibg=#3C3836
" highlight TabLineModifiedSeparatorActive guifg=#B8BB26 guibg=#282828
" highlight TabLineModifiedSeparatorInactive guifg=#A89984 guibg=#3C3836
" TabLinePaddingActive
" TabLinePaddingInactive
" highlight TabLineModifiedActive guibg=#282828 guifg=#B8BB26
" highlight TabLineModifiedInactive guibg=#3C3836 guifg=#A89984
" highlight TabLineCloseActive guibg=#282828 guifg=#CC241D
" highlight TabLineCloseInactive guibg=#3C3836 guifg=#A89984
"
