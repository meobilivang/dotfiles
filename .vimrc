" BASICS ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" syntax highlighting
syntax on

" show identation by tabs
set list lcs=tab:\|\ 

" numbers to each line
set number

" file stats
set ruler

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" blacklist type of file to edit w vim
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Encoding
set encoding=utf-8

set backspace=indent,eol,start

" auto identation moving to next line
set autoindent

" YAML config
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=intent
" tab space for yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" identLine package
" let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" }}}

" COLOR SCHEME ---------------------------------------------------------------- {{{
set term=xterm-256color

if has('termguicolors')
    set termguicolors
endif

set background=dark


" }}}

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
  
  "  status bar
  Plug 'itchyny/lightline.vim'
  
  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

  Plug 'Yggdroot/indentLine'
    
  Plug 'tpope/vim-commentary'

call plug#end()
" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" NERDTre
noremap <C-w>n :NERDTreeToggle<cr>

" tab
nnoremap <C-t>n :tabnew<CR>
nnoremap <C-t>w :tabclose<CR>

" split window
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" }}}
