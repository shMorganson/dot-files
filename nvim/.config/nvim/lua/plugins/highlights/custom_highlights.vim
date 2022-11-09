" Neovim Highlights
"highlight Comment guifg=#686f9a ctermfg=60 gui=italic
highlight FloatBorder guibg=#504945 guifg=#504945 ctermbg=239 ctermfg=239
" highlight Normal guibg=NONE guifg=NONE
"highlight LineNr guifg=#7a5ccc
"highlight FloatermBorder guibg=None guifg=#10737B
highlight EndOfBuffer guifg=#282828 guibg=#282828 ctermfg=235 ctermbg=235
" highlight VertSplit gui=NONE guibg=None guifg=#10737B
"highlight BufferLineSeparator guifg=#172030
highlight SignColumn guibg=#282828 ctermbg=235
highlight DiagnosticSignHint guifg=#8EC07C guibg=#282828 ctermbg=235 ctermfg=108
highlight DiagnosticSignInfo guifg=#83A598 guibg=#282828 ctermbg=235 ctermfg=109
highlight DiagnosticSignWarn guifg=#FABD2F guibg=#282828 ctermbg=235 ctermfg=214
highlight DiagnosticSignError guifg=#FB4934 guibg=#282828 ctermbg=235 ctermfg=167
highlight DiagnosticHint guifg=#8EC07C guibg=#282828
highlight StatusLine guibg=#282828
highlight CursorLine guibg=#30365F ctermbg=237 gui=bold
highlight FloatShadow guibg=#282828 blend=0
highlight FloatShadowThrough guibg=#282828 blend=0
highlight FloatTitle guifg=#83A598 ctermfg=12

" Treesitter
highlight @function.call guifg=#FABD2F ctermfg=214
" highlight! link TSField SDDarkPurple2

" GitSigns Highlights
highlight GitSignsAdd guifg=#B8BB26 guibg=#282828 ctermbg=235 ctermfg=142
highlight GitSignsChange guifg=#8EC07C guibg=#282828 ctermbg=235 ctermfg=108
highlight GitSignsDelete guifg=#FB4934 guibg=#282828 ctermbg=235 ctermfg=167

" Telescope Highlights
  " Prompt
    highlight TelescopePromptTitle guibg=#458588 ctermbg=66 guifg=#282828 ctermfg=235 
    highlight TelescopePromptBorder guifg=#7C6F64 guibg=#7C6F64 ctermfg=243 ctermbg=243
    highlight TelescopePromptNormal guifg=#EBDBB2 guibg=#7C6F64 ctermfg=223 ctermbg=243
    highlight TelescopePromptPrefix guifg=#D3869B ctermfg=175

  " Results
    highlight TelescopeResultsTitle guifg=#282828 guibg=#B8BB26 ctermfg=235 ctermbg=142
    highlight TelescopeResultsBorder guifg=#665C54 guibg=#665C54 ctermfg=241 ctermbg=241
    highlight TelescopeResultsNormal guifg=#EBDBB2 guibg=#665C54 ctermfg=223 ctermbg=241

  " Preview
    highlight TelescopePreviewTitle guifg=#282828 guibg=#B16286 ctermfg=235 ctermbg=132
    highlight TelescopePreviewBorder guifg=#504945 guibg=#504945 ctermfg=239 ctermbg=239
    highlight TelescopePreviewNormal guibg=#504945 ctermbg=239

  " Other
    highlight TelescopeSelection gui=bold cterm=bold
    "highlight TelescopeNormal guifg=#ECEFF4 guibg=#363944
    highlight TelescopeSelectionCaret guifg=#D3869B ctermfg=175 gui=NONE cterm=NONE
    "highlight TelescopeMatching guifg=#FA8D3E gui=bold

" NvimTree Highlights
" highlight NvimTreeFolderIcon guifg=#FABD2F ctermfg=214
  "highlight NvimTreeNormal guibg=#282D32
  "highlight NvimTreeVertSplit guifg=#4C566A guifg=#4C566A
  "highlight NvimTreeEmptyFolderName guifg=#D8DEE9
highlight NvimTreeIndentMarker guifg=#458588 ctermfg=66
highlight NvimTreeFolderName guifg=#EBDBB2 ctermfg=223
highlight NvimTreeRootFolder guifg=#D3869B ctermfg=175
highlight NvimTreeOpenedFolderName guifg=#EBDBB2 ctermfg=223
highlight NvimTreeOpenedFile guifg=#FFAA33
highlight NvimTreeGitNew guifg=#B8BB26 ctermfg=142
highlight NvimTreeGitDirty guifg=#875F00 ctermfg=94
highlight NvimTreeGitMerge guifg=#FE8019 ctermfg=208
highlight NvimTreeGitStaged guifg=#83A598 ctermfg=109
highlight NvimTreeGitDeleted guifg=#FB4934 ctermfg=167
highlight NvimTreeGitRename guifg=#D79921 ctermfg=172

" vimwiki Highlighting
highlight VimwikiHeader1 gui=bold guifg=#B8BB26 ctermfg=142 cterm=bold
highlight VimwikiHeader2 gui=bold guifg=#458588 ctermfg=66 cterm=bold
highlight VimwikiHeader3 gui=bold guifg=#B16286 ctermfg=13 cterm=bold
highlight VimwikiHeader4 gui=bold guifg=#689D6A ctermfg=72 cterm=bold
highlight VimwikiHeader5 gui=bold guifg=#D79921 ctermfg=172 cterm=bold
highlight VimwikiHeader6 gui=bold guifg=#83A598 ctermfg=109 cterm=bold

" Alpha Highlights
  highlight AlphaFooterColor guifg=#B8BB26 ctermfg=142
  highlight AlphaHeaderColor guifg=#458588 ctermfg=66

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
  highlight IndentBlanklineChar guifg=#30365F

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


