" Defining the colors.
highlight SDRed guifg=#e33400 ctermfg=166
highlight SDOrange guifg=#e39400 ctermfg=172
highlight SDGreen guifg=#5ccc96 ctermfg=78
highlight SDYellow guifg=#f2ce00 ctermfg=220
highlight SDPurple guifg=#b3a1e6 ctermfg=146
highlight SDPurple2 guifg=#7a5ccc ctermfg=98
highlight SDDarkPurple guifg=#30365F ctermfg=237
highlight SDDarkPurple2 guifg=#686f9a ctermfg=60
highlight SDCyan guifg=#00a3cc ctermfg=38
highlight SDMagenta guifg=#ce6f8f ctermfg=168 
highlight SDBackground guibg=#0f111b ctermbg=233
highlight SDForeground guifg=#ecf0c1 ctermfg=255
highlight SDGrey guifg=#818596 ctermfg=102
highlight SDGrey2 guifg=#c1c3cc ctermfg=251
highlight SDPureWhite guifg=#ffffff ctermfg=15
" highlight SDPureBlack guifg=#000000 ctermfg=0

" Neovim Highlights
  highlight Comment guifg=#818596 ctermfg=102 gui=italic
  highlight FloatBorder guibg=#0f111b ctermbg=233
" highlight NormalFloat guibg=#f3f4f5
" highlight LineNr guifg=#686f9a
" highlight FloatBorder guibg=#F5F5F5 guifg=#F5F5F5
  highlight EndOfBuffer guifg=#0f111b ctermfg=233
  highlight VertSplit guifg=#c1c3cc ctermfg=251 guibg=#0f111b ctermbg=233
" highlight SignColumn guibg=#FCFCFC
" highlight DiagnosticSignHint guifg=#8EC07C guibg=#282828
" highlight DiagnosticSignInfo guifg=#83A598 guibg=#282828
" highlight DiagnosticSignWarn guifg=#FABD2F guibg=#282828
" highlight DiagnosticSignError guifg=#FB4934 guibg=#282828
" highlight DiagnosticHint guifg=#8EC07C guibg=#282828
"highlight StatusLine guibg=#1A1826

" Treesitter
highlight! link TSField SDDarkPurple2

" GitSigns Highlights
" highlight GitSignsAdd guifg=#B8BB26 guibg=#282828
  highlight GitSignsChange guifg=#e39400 guibg=#0f111b
" highlight GitSignsDelete guifg=#FB4934 guibg=#282828

" Telescope Highlights
  " Prompt
    highlight! link TelescopePromptTitle SDCyan
    highlight! link TelescopePromptBorder SDForeground
    highlight! link TelescopePromptPrefix SDMagenta
    "highlight TelescopePrompt guibg=#575268
    "highlight TelescopePromptBorder guifg=#83a598 guibg=#575268
    highlight! link TelescopePromptCounter SDGrey2
    "highlight TelescopePromptNormal guibg=#575268

  " Results
    highlight! link TelescopeResultsTitle SDGreen
    highlight! link TelescopeResultsBorder SDForeground
    "highlight TelescopeResultsNormal guibg=#302D41

  " Preview
    highlight! link TelescopePreviewTitle SDPurple2
    highlight! link TelescopePreviewBorder SDForeground
    "highlight TelescopePreviewNormal guifg=#D9E0EE guibg=#1E1E2E

  " Other
    "highlight TelescopeSelection gui=bold guifg=#3E3E3E guibg=#E7E7E7
    "highlight TelescopeNormal guifg=#ECEFF4 guibg=#363944
    "highlight TelescopeSelectionCaret guifg=#F8BD96
    " highlight TelescopeMatching guifg=#FA8D3E gui=bold

" NvimTree Highlights
  highlight NvimTreeFolderIcon guifg=#00a3cc
  "highlight NvimTreeGitNew guifg=28CD41
  "highlight NvimTreeNormal guibg=#282D32
  "highlight NvimTreeVertSplit guifg=#4C566A guifg=#4C566A
  "highlight NvimTreeEmptyFolderName guifg=#D8DEE9
  "highlight NvimTreeEndOfBuffer guibg=#282D32 guifg=#282D32
  "highlight NvimTreeIndentMarker guifg=#575268
  highlight NvimTreeFolderName guifg=#ecf0c1
  "highlight NvimTreeRootFolder ctermfg=141
  "highlight NvimTreeOpenedFolderName guifg=#7a5ccc
  "highlight NvimTreeOpenedFile guifg=#FFAA33
  "highlight NvimTreeGitNew ctermfg=2
  "highlight NvimTreeGitDirty ctermfg=1
  "highlight NvimTreeGitMerge ctermfg=3
  "highlight NvimTreeGitStaged ctermfg=6
  "highlight NvimTreeGitDeleted ctermfg=1
  "highlight NvimTreeGitRename ctermfg=3

" vimwiki Highlighting
 highlight VimwikiHeader1 gui=bold guifg=#7a5ccc ctermfg=98
 highlight VimwikiHeader2 gui=bold guifg=#b3a1e6 ctermfg=146
 highlight VimwikiHeader3 gui=bold guifg=#5ccc96 ctermfg=78
 highlight VimwikiHeader4 gui=bold guifg=#00a3cc ctermfg=38
 highlight VimwikiHeader5 gui=bold guifg=#ce6f8f ctermfg=168
 highlight VimwikiHeader6 gui=bold guifg=#686f9a ctermfg=60

" Alpha Highlights
  highlight! link AlphaFooterColor SDGreen
  highlight! link AlphaHeaderColor SDCyan

" Notify
  " Error
  highlight! link NotifyERRORBorder SDRed
  highlight! link NotifyERRORIcon SDRed
  highlight! link NotifyERRORTitle SDRed
  highlight link NotifyERRORBody Normal

  " Warn
  highlight! link NotifyWARNBorder SDOrange
  highlight! link NotifyWARNIcon SDOrange
  highlight! link NotifyWARNTitle SDOrange
  highlight link NotifyWARNBody Normal

  " Info
  highlight! link NotifyINFOBorder SDYellow
  highlight! link NotifyINFOIcon SDYellow
  highlight! link NotifyINFOTitle SDYellow
  highlight link NotifyINFOBody Normal

  " Debug
  highlight! link NotifyDEBUGBorder SDPurple2
  highlight! link NotifyDEBUGIcon SDPurple2
  highlight! link NotifyDEBUGTitle  SDPurple2
  highlight link NotifyDEBUGBody Normal

  " Trace
  highlight! link NotifyTRACEBorder SDMagenta
  highlight! link NotifyTRACEIcon SDMagenta
  highlight! link NotifyTRACETitle SDMagenta
  highlight link NotifyTRACEBody Normal

" DevIcon
  highlight DevIconterraform guifg=#5ccc96
  highlight DevIconbrewfile guifg=#874423
  highlight DevIconsh guifg=#b48ead

  " Indentline
  highlight IndentBlanklineChar guifg=#30365F
