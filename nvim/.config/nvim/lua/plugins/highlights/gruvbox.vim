" Gruvbox theme settings and overrides.

"""""""""""""""
""" Settings"""
"""""""""""""""
let g:gruvbox_termcolors = "true"
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_sign_colmn = "bg0"
let g:gruvbox_contrast = "soft"
let g:gruvbox_contrast_dark = "soft"



""""""""""""""""
""" Overrides"""
""""""""""""""""
" Nvim
highlight StatusLine guibg=#282828 ctermbg=235 
highlight! link EndOfBuffer GruvboxBg0

" Mason
highlight! link MasonHighlight GruvboxAqua
highlight MasonHighlightBlock guifg=#282828 ctermfg=235 guibg=#83a598 ctermbg=109
highlight MasonHighlightBlockBold guifg=#282828 ctermfg=235 guibg=#83a598 ctermbg=109 gui=bold cterm=bold
highlight! link MasonHighlightSecondary GruvboxYellow
highlight MasonHighlightBlockSecondary guifg=#282828 ctermfg=235 guibg=#fabd2f ctermbg=214
highlight MasonHighlightBlockBoldSecondary guifg=#282828 ctermfg=235 guibg=#fabd2f gui=bold cterm=bold
highlight! link MasonHeader MasonHighlightBlockBoldSecondary
highlight! link MasonHeaderSecondary MasonHighlightBlockBold
highlight! link MasonMuted GruvboxFg4 
highlight MasonMutedBlock guifg=#282828 ctermfg=235 guibg=#a89984 ctermbg=246
highlight MasonMutedBlockBold guifg=#282828 ctermfg=235 guibg=#a89984 ctermbg=246 gui=bold cterm=bold

" Alpha Highlights
highlight! link AlphaFooterColor GruvboxGreen 
highlight! link AlphaHeaderColor GruvboxAqua

" Telescope.nvim
highlight! link TelescopeNormal GruvboxFg1
highlight! link TelescopeSelection GruvboxOrangeBold
highlight! link TelescopeSelectionCaret GruvboxRed
highlight! link TelescopeMultiSelection GruvboxGray
highlight! link TelescopeBorder TelescopeNormal
highlight TelescopePromptBorder guifg=#504945 ctermfg=239 guibg=#504945 ctermbg=239
highlight TelescopeResultsBorder guifg=#3c3836 ctermfg=237 guibg=#3c3836 ctermbg=237
highlight TelescopeResultsNormal guifg=#ebdbb2 ctermfg=223 guibg=#3c3836 ctermbg=237
highlight TelescopeResultsTitle guifg=#282828 ctermfg=235 guibg=#d3869b ctermbg=175
highlight TelescopePreviewBorder guifg=#3c3836 ctermfg=237 guibg=#3c3836 ctermbg=237
highlight TelescopePreviewNormal guifg=#ebdbb2 ctermfg=223 guibg=#3c3836 ctermbg=237
highlight TelescopePreviewTitle guifg=#282828 ctermfg=235 guibg=#b8bb26 ctermbg=142
highlight! link TelescopeMatching GruvboxBlue
highlight! link TelescopePromptPrefix GruvboxRed
highlight TelescopePromptTitle guifg=#282828 ctermfg=235 guibg=#83a598 ctermbg=109
highlight TelescopePromptNormal guifg=#ebdbb2 ctermfg=223 guibg=#504945 ctermbg=239 
highlight! link TelescopePromptCounter GruvboxGray
highlight! link TelescopePreviewDirectory GruvboxBlueBold
highlight! link TelescopeResultsDiffChange GruvboxAquaBold
  " TelescopeResultsDiffAdd = { default = true, link = "DiffAdd" },
  " TelescopeResultsDiffDelete = { default = true, link = "DiffDelete" },
  " TelescopeResultsDiffUntracked = { default = true, link = "NonText" },

" Nvim Tree
highlight! link NvimTreeSymlink GruvboxAqua
highlight! link NvimTreeRootFolder GruvboxPurpleBold
highlight! link NvimTreeFolderIcon GruvboxBlue
highlight! link NvimTreeFileIcon GruvboxFg2
highlight! link NvimTreeExecFile GruvboxGreenBold
highlight! link NvimTreeOpenedFile GruvboxRedBold
highlight! link NvimTreeSpecialFile GruvboxYellowBold
highlight! link NvimTreeImageFile GruvboxPurple
highlight! link NvimTreeIndentMarker GruvboxBg3
highlight! link NvimTreeGitDirty GruvboxYellow
highlight! link NvimTreeGitStaged GruvboxYellow
highlight! link NvimTreeGitMerge GruvboxPurple
highlight! link NvimTreeGitRenamed GruvboxPurple
highlight! link NvimTreeGitNew GruvboxYellow
highlight! link NvimTreeGitDeleted GruvboxRed
highlight! link NvimTreeWindowPicker GruvboxAqua
highlight! link NvimTreeFolderName GruvboxBlue

" Highlight-nvim
highlight Headline1 guibg=#83a598 ctermbg=109 guifg=#458588 ctermfg=66 
