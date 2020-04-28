" Install vim-plug automatically if not installed
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -- sync | source $HOME/.config/nvim/init.vim
endif

call plug#begin()
    " Appearance
    Plug 'ajmwagar/vim-deus'
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'majutsushi/tagbar'
    Plug 'Yggdroot/indentLine'
    " Syntax
    Plug 'baskerville/vim-sxhkdrc'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'mboughaba/i3config.vim'
    " Editing
    Plug 'jiangmiao/auto-pairs'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/echodoc.vim'
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
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

"NERDTree
let g:NERDTreeMapActivateNode = "l"

" Identline
let g:indentLine_color_term = 255
let g:indentLine_color_gui = '#5C6370'


"Auto Completion
let g:LanguageClient_serverCommands = {
    \ 'c'  : ['/bin/clangd'],
    \ 'cpp': ['/bin/clangd'],
    \ }

let g:LanguageClient_hoverPreview = "Never"
let g:LanguageClient_useVirtualText = "No"

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

let g:echodoc#enable_at_startup = 1

let g:deoplete#enable_at_startup = 1
