" OPTIONS
set hidden                          " Enable background buffers
set wildmenu                        " Better command-line completion
set showcmd                         " Show partial commands in the last line of the screen
set hlsearch                        " Highlight searches (use <C-L> to temporarily turn off highlighting; see the mapping of <C-L> below)
set ignorecase                      " Use case insensitive search, except when using capital letters
set smartcase                       " Do not ignore case with capitals
set backspace=indent,eol,start      " Allow backspacing over autoindent, line breaks and start of insert action
set autoindent                      " Inserts indents automatically
set nostartofline                   " Stop certain movements from always going to the first character of a line.
set ruler
set laststatus=2                    " Always display the status line, even if only one window is displayed
set confirm                         " Asking if you wish to save changed files.
set visualbell                      " Use visual bell instead of beeping when doing something wrong
set t_vb=                           " Reset the terminal code for the visual bell.
set conceallevel=0
set relativenumber
set cmdheight=2                     " Set the command window height to 2 lines
set number                          " Display line numbers on the left
set listchars=tab:\|\               " Set the indentation settings
set list                            " Also sets indentation settings
set mouse=a                         " Enables mouse support
set shiftwidth=4                    " Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=4
set expandtab
set shiftwidth=4                    " Indentation settings for using hard tabs for indent. Display tabs as four characters wide.
set tabstop=4
set splitright
set splitbelow
set nowrap

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

if has('filetype')
  filetype indent plugin on
endif

" Cursor changes based on mode
" SI = Insert SR = Replace EI = Normal
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" VIM MAPPINGS
" Copy to the clipboard at yank.
vmap <leader>c "*y
" Open new tab.
nnoremap <leader>t :tabnew<CR>
" Set spellcheck on for .txt
nnoremap <leader>sc :setlocal spell spelllang=en_us<CR>
" Clear search highlighting
nnoremap <C-l> :noh<CR>
" Set conceallevel to 0 for .md
nmap <leader>cl :setl conceallevel=0<CR>

" Vim Autocommands
" Set .conf as dosini
autocmd BufRead,BufNewFile *.conf setf dosini
"autocmd BufWinLeave * NERDtreeRefreshRoot

" PLUGIN MANAGER
" Start plug.vim
set nocompatible
let g:plug_window = 'vertical new'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular' |
            \ Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'thaerkh/vim-indentguides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'darfink/vim-plist'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'google/vim-jsonnet'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'yorik1984/vim-gitignore'
Plug 'glepnir/dashboard-nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'hashivim/vim-terraform'

call plug#end()

" TERMINAL SETTINGS
nnoremap <C-t> :call Horizontal_Terminal()<CR>
nnoremap <C-v> :call Vertical_Terminal()<CR>

" Setting up horizontal terminal
function! Horizontal_Terminal()
  set termwinsize=15x0
  cabbrev bterm bo term
  :bo term
endfunction

function! Vertical_Terminal()
   set termwinsize=0x0
   :vert term
endfunction

" VIM THEME SETTINGS
set t_Co=256
set background=dark
colorscheme nord

" Plugin Settins and Configuration

" FZF Mappings
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>bl :Buffers<CR>

" YAML SYNTAX SETTINGS
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" NERDtree Settings
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" NERDTree Options
let NERDTreeChDirMode = 1
let NERDTreeHijackNetrw = 1
let NERDTreeChDirMode = 3
let NERDTreeWinPos = 'left'
let NERDTreeWinSize = 30
let NERDTreeWinSizeMax = 30
let NERDTreeShowHidden=1

" NERDTree UI Changes
let NERDTreeHighlightCursorline = 1
autocmd VimEnter,Colorscheme * :hi NERDTreeExecFile  guifg=#A3BE8C   ctermfg=2
autocmd VimEnter,Colorscheme * :hi NERDTreeOpenable  guifg=#A3BE8C   ctermfg=2
autocmd VimEnter,Colorscheme * :hi NERDTreeUp guifg=#BF616A ctermfg=1
autocmd VimEnter,Colorscheme * :hi NERDTreeCWD guifg=#92B3B3 ctermfg=14
"autocmd VimEnter,Colorscheme * :hi NERDTreeFlags guifg=#FFFFFF ctermfg=7
"autocmd VimEnter,Colorscheme * :hi NERDTreeDir guifg=#AF8EAC ctermfg=5

" NERDTree Shortcuts
noremap <leader>f :NERDTree<CR>
nnoremap <leader>fo :NERDTreeToggle<CR>
nnoremap <leader>tf :NERDTreeFind<CR>

" DEV ICON SETTINGS
" Loading the plugin
let g:webdevicons_enable = 1

" Adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:NERDTreeHighlightFoldersFullName = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" Change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''

" Adding the custom source to unite
let g:webdevicons_enable_unite = 1

" Adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1

set encoding=UTF-8


" NERDTREE GIT STATUS PLUGIN SETTINGS
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusConcealBrackets = 1


" COC SETTINGS
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" COC-YANK Settings
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>


" MARKDOWN SETTINGS
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0


" VIM INDENT GUIDES SETTINGS
let g:indentguides_ignorelist = [ ]
let g:indentLine_enabled = 1
let g:indentLine_defaultGroup = 'error'
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'


" ALE SETTINGS
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


" AIRLINE SETTINGS
let g:airline_theme = "nord"
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" UltiSnip Settings
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Vim Fugitive Settings
nmap <leader>gg :Git<CR>
nmap <leader>gp :Git push<CR>

" Vim Dashboard Settings
let g:dashboard_default_executive ='fzf'

  let g:dashboard_custom_header = [
        \ '',
        \ ' ██╗   ██╗ ██╗ ███╗   ███╗ ',
        \ ' ██║   ██║ ██║ ████╗ ████║ ',
        \ ' ██║   ██║ ██║ ██╔████╔██║ ',
        \ ' ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ',
        \ '  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ',
        \ '   ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ',
        \ '',
        \ ]

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

nmap <leader>u :PlugUpdate<CR>

let g:dashboard_default_executive ='fzf'

" VimWiki Settings
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
