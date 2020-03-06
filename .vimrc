""""""""""""""" Plugins """""""""""""""
" Install vim-plug automatically if not installed
if empty(glob('$HOME/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin('$HOME/.vim/plugged')
    Plug 'ajmwagar/vim-deus'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'majutsushi/tagbar'
    Plug 'Yggdroot/indentLine'
    Plug 'baskerville/vim-sxhkdrc'
call plug#end()

"Auto-Pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"NERDTree
let g:NERDTreeMapActivateNode = "l"
nmap <F1> :NERDTreeToggle<CR>

"Tagbar
nmap <F2> :TagbarToggle<CR>

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

set encoding=UTF-8

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

" Window and tab navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <M-h> :tabr<CR>
nmap <M-l> :tabl<CR>

" Enable Alt key
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set ttimeout ttimeoutlen=50

" Strip trailing whitespaces on save
if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
endif

