source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/bindings.vim

set shortmess=I
set noshowmode

syntax on
set termguicolors
colorscheme onedark
set background=dark

filetype plugin indent on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set ignorecase
set completeopt-=preview
set cmdheight=3
set showmatch
set clipboard=unnamedplus

set number
set relativenumber

set cursorline

set nowrap

set smartcase
set hlsearch
set incsearch

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set signcolumn=yes

set splitright
set splitbelow

if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
endif

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=239 guibg=#242a32
