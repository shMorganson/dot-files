
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

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

" Display the cursor position on the last line of the screen or in the status
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
set clipboard=unnamedplus,unnamed,autoselect

" Indentation settings.
set listchars=tab:\|\
set list

"---------------------------------------------------------
" Shortcut keys
nnoremap <leader>t :bo term<CR>

"----------------------------------------------------------
" Terminal Settings
" Open terminal below all splits
cabbrev bterm bo term

" Set the window size of the terminal.
set termwinsize=15x0

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
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

let g:plug_window = 'vertical'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-markdown'
Plug 'elzr/vim-json'
Plug 'wfxr/minimap.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'darfink/vim-plist'
Plug 'cocopon/inspecthi.vim'

call plug#end()

"------------------------------------------------------------
" NERDTree Settings
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
\autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window left.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * silent NERDTreeMirror

let NERDTreeHighlightCursorline = 1
autocmd VimEnter,Colorscheme * :hi NERDTreeExecFile  guifg=#A3BE8C   ctermfg=2
autocmd VimEnter,Colorscheme * :hi NERDTreeOpenable  guifg=#A3BE8C   ctermfg=2
autocmd VimEnter,Colorscheme * :hi NERDTreeUp guifg=#BF616A ctermfg=1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"----------------------------------------------------
" Dev Icons
" Loading the plugin
let g:webdevicons_enable = 1

" Adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:NERDTreeHighlightFoldersFullName = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" Change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''


" Adding the custom source to unite
let g:webdevicons_enable_unite = 1

" Adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" Adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

let g:WebDevIconsOS = 'Darwin'
set encoding=UTF-8

"-----------------------------------------------------
" Minimap Settings
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_block_filetypes = ['fugitive', 'nerdtree', 'tagbar' ]
let g:minimap_block_buftypes = ['nofile', 'nowrite', 'quickfix', 'terminal', 'prompt', 'nerdtree' ]
let g:minimap_highlight_range = 27
let g:minimap_highlight = 'DiffText'

"-----------------------------------------------------
" Indent plugin settings.
"let g:indentLine_setColors = 0
let g:indentLine_enabled = 1
let g:indentLine_defaultGroup = 'error'

"-----------------------------------------------------
" Fugitive Git settings.
cabbrev bgit bo Git

"-----------------------------------------------------
" Undotree Settings
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

"-----------------------------------------------------
" ALE Settings.
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

"-----------------------------------------------------
" VIM theme settings.
" set termguicolors

set background=dark
colorscheme nord

"-----------------------------------------------------
" Airline settings.
let g:airline_theme = "nord"
let g:airline_extensions = ['airline-ale']
let g:airline#extensions#ale#enabled = 1
