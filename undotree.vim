
" UndoTree Settings
" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif

if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

cabbrev utree UndotreeToggle
