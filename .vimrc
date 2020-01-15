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
set nocompatible            " Make Vim more useful
set shortmess=I             " Disable vim welcome message

" Syntax Colors
syntax on
set background=dark
colorscheme deus

filetype plugin indent on

set clipboard=unnamedplus   " Use the OS clipboard by default (on versions
                            " compiled with `+clipboard`)
let mapleader=","           " Change mapleader

" Enable relative line numbers
set number
set relativenumber

set cursorline              " Highlight the line the cursor is on

" Ruler at column 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=239 guibg=black

" Search
set gdefault                " Add the g flag to search/replace by default
set hlsearch                " Highlight search results
map <Space> :noh<cr>

set incsearch               " Start searching without having to press Enter
set ignorecase              " Ignore case of searches

set nostartofline           " Do not reset cursor to start of line when
                            " moving around
set showcmd                 " Show the (partial) command as it is being typed

" More natural splitting of windows
set splitbelow
set splitright

set lazyredraw
set showmatch               " Highlight closing bracket

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

noremap H ^
noremap L $
noremap ^ H
noremap $ L

