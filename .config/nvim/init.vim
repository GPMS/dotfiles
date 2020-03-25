""""""""""""""" Plugins """""""""""""""
" Install vim-plug automatically if not installed
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -- sync | source $HOME/.config/nvim/init.vim
endif

call plug#begin()
    " Appearance
    Plug 'ajmwagar/vim-deus'
    Plug 'vim-airline/vim-airline'
    Plug 'majutsushi/tagbar'
    Plug 'Yggdroot/indentLine'
    " Syntax
    Plug 'baskerville/vim-sxhkdrc'
    Plug 'bfrg/vim-cpp-modern'
    " Editing
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " File Browser
    Plug 'preservim/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'ryanoasis/vim-devicons'
    " Switching between files
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()

"Auto-Pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

"FZF
nmap <C-f> :Files<CR>
nmap <C-t> :Tags<CR>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd FileType c nnoremap <M-s> :CocCommand clangd.switchSourceHeader<CR>

"NERDTree
let g:NERDTreeMapActivateNode = "l"
nmap <F1> :NERDTreeTabsToggle<CR>

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

set noshowmode

filetype plugin indent on

set encoding=UTF-8

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamedplus

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
map <space> :noh<CR>
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

" Strip trailing whitespaces on save
if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
endif

