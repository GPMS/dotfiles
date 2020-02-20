""""""""""""""" Plugins """""""""""""""
" Install vim-plug automatically if not installed
if empty(glob('$HOME/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin('$HOME/.vim/plugged')
Plug 'ajmwagar/vim-deus'
call plug#end()

""""""""""""""" General Configuration """""""""""""""
" Make Vim more useful
set nocompatible

" Disable vim welcome message
set shortmess=I

" Syntax Colors
syntax on
set background=dark
colorscheme deus

filetype plugin indent on

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamedplus

let mapleader=","

" Enable relative line numbers
set number

" Highlight the line the cursor is on
set cursorline

" Ruler at column 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=234 guibg=black

" Search

" Add the g flag to search/replace by default
set gdefault
" Highlight search results
set hlsearch
" Clear highlight
map <Space> :noh<cr>
" Start searching without having to press Enter
set incsearch
" Ignore case of searches
set ignorecase

" Do not reset cursor to start of line when moving around
set nostartofline

" Show the (partial) command as it is being typed
set showcmd

" More natural splitting of windows
set splitbelow
set splitright

set lazyredraw

" Highlight closing bracket
set showmatch

" Identation
set autoindent
set backspace=indent,eol,start
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Strip trailing whitespaces on save
if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
endif
