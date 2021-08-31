" NVIM Setting
" ----------------------------------------------------------
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor
" osition on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Have yank copy to clipboard as well.
" set clipboard=unnamedplus,unnamed,autoselect

" Indentation settings.
set listchars=tab:\|\
set list

"----------------------------------------------------------
" Terminal Settings
" Open terminal below all splits
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <leader>t :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

let running = jobwait([&channel], 0)[0] == -1

" Indentation options
" -----------------------------------------------------------
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4

"------------------------------------------------------------
" YAML Syntax
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"------------------------------------------------------------
" Start plug.vim

let g:plug_window = 'vertical new'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'elzr/vim-json'
Plug 'wfxr/minimap.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier'
Plug 'darfink/vim-plist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'shaunsingh/nord.nvim'
Plug 'godlygeek/tabular' |
            \ Plug 'plasticboy/vim-markdown'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Initialize plugin system
call plug#end()

"Dev Icons
"----------------------------------------------------
set encoding=UTF-8

" NVimTree Settings
"-----------------------------------------------------
let g:nvim_tree_auto_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 0
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_tab_open = 0
let g:nvim_tree_auto_resize = 1
let g:nvim_tree_disable_netrw = 1
let g:nvim_tree_hijack_netrw = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 0
let g:nvim_tree_lsp_diagnostics = 0
let g:nvim_tree_disable_window_picker = 0
let g:nvim_tree_hijack_cursor = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_update_cwd = 0
let g:nvim_tree_respect_buf_cwd = 0
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

let g:nvim_tree_width = 30

nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>f :NvimTreeFindFile<CR>

" COC Settings
"-----------------------------------------------------
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" COC-YANK Settings
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" Markdown Settings
"-----------------------------------------------------
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Minimap Settings
"-----------------------------------------------------
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_block_filetypes = ['fugitive', 'nerdtree', 'tagbar', 'nvimtree' ]
let g:minimap_block_buftypes = ['nofile', 'nowrite', 'quickfix', 'terminal', 'prompt', 'nerdtree', 'nvimtree', ]
let g:minimap_highlight_range = 10
let g:minimap_git_colors = 1
let g:minimap_diffadd_color = 'DiffAdd'
let g:minimap_diffremove_color = 'DiffDelete'
let g:minimap_diff_color = 'DiffChange'
let g:minimap_highlight_search = 1
let g:minimap_search_color = 'Search'
let g:minimap_search_color_priority = 120
let g:minimap_cursor_color_priority = 110
let g:minimap_git_color_priority = 100
let g:minimap_highlight = 'Title'
let g:minimap_base_highlight = 'Normal'


" Treesitter.nvim Settings
"-----------------------------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
  enable = { "bash", "yaml", "vim", "lua", "json" },
    disable = { },
        additional_vim_regex_highlighting = false,
  },
}
EOF

" Indent plugin settings.
"-----------------------------------------------------
let g:indentLine_enabled = 1
let g:indentLine_defaultGroup = 'error'

" Fugitive Git settings.
"-----------------------------------------------------
cabbrev bgit bo Git

" Undotree Settings
"-----------------------------------------------------
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

" e.g. using 'd' instead of 'days' to save some space.
if !exists('g:undotree_ShortIndicators')
    let g:undotree_ShortIndicators = 0
endif

" undotree window width
if !exists('g:undotree_SplitWidth')
    if g:undotree_ShortIndicators == 1
        let g:undotree_SplitWidth = 18
    else
        let g:undotree_SplitWidth = 24
    endif
endif

" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif

cabbrev utree UndotreeToggle

" ALE Settings.
"-----------------------------------------------------
let g:ale_linters = {
\   'markdown': ['markdownlint'],
\}
let g:ale_sign_error                  = '✘'
let g:ale_sign_warning                = '⚠'
highlight ALEErrorSign ctermbg        =NONE ctermfg=red
highlight ALEWarningSign ctermbg      =NONE ctermfg=yellow
let g:ale_linters_explicit            = 0
let g:ale_lint_on_text_changed        = 'never'
let g:ale_lint_on_enter               = 0
let g:ale_lint_on_save                = 1
let g:ale_fix_on_save                 = 1
let g:ale_linters = {
\   'markdown':      ['markdownlint'],
\}
let g:ale_fixers = {
\   '*':          ['remove_trailing_lines', 'trim_whitespace'],
\}

" Indent Line Settings
"-----------------------------------------------------
lua << EOF
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
EOF

" Lualine Settings
"-----------------------------------------------------
lua << EOF
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'nord',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF

" VIM theme settings.
"-----------------------------------------------------
set termguicolors
lua << EOF
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
require('nord').set()
EOF

colorscheme nord
