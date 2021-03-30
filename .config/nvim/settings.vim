set shortmess+=c
set noshowmode
set hidden
set updatetime=100
set timeoutlen=500
set signcolumn=yes
set scrolloff=999
set mouse=a
set lazyredraw

filetype plugin indent on
set termguicolors

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set ignorecase

set foldmethod=syntax
set foldnestmax=3
set foldlevel=3
set nofoldenable

set completeopt-=preview
set clipboard=unnamedplus
set number
set relativenumber
set nowrap

set nohlsearch
set smartcase
set incsearch

set noswapfile
set nobackup
set nowritebackup
set signcolumn=number
set splitright
set splitbelow

" Delete trailing whitespace
if has("autocmd")
    autocmd BufWritePre * %s/\s\+$//e
    autocmd! BufWritePost *.vim source %
endif

highlight VertSplit cterm=NONE
set fillchars+=vert:\▏

set colorcolumn=121
highlight ColorColumn ctermbg=0 guibg=#3c3836

