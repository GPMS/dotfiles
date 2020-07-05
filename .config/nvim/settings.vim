let g:mapleader = " "

set shortmess+=c
set noshowmode
set hidden
set updatetime=300
set timeoutlen=500
set signcolumn=yes
set scrolloff=999
filetype plugin indent on

syntax on
set termguicolors
colorscheme onedark
set background=dark

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

set completeopt-=preview
set cmdheight=3
set clipboard=unnamedplus
set number
set relativenumber
set cursorline
set nowrap

set nohlsearch
set ignorecase
set smartcase
set incsearch

set noswapfile
set nobackup
set nowritebackup
set signcolumn=yes
set splitright
set splitbelow

if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
    autocmd! BufWritePost $MYVIMRC source %
endif

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=239 guibg=#242a32

