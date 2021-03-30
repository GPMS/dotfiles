" Install vim-plug automatically if not installed
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -- sync | source $HOME/.config/nvim/init.vim
endif

" Plugins
call plug#begin()
    " Appearance
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'majutsushi/tagbar'
    Plug 'Yggdroot/indentLine'
    Plug 'haya14busa/incsearch.vim'
    " Linting
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'sheerun/vim-polyglot'
    " Editing
    Plug 'kassio/neoterm'
    Plug 'psliwka/vim-smoothie'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'justinmk/vim-sneak'
    " Switching between files
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()

" Load plugin-specific config files
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/indentline.vim
" source $HOME/.config/nvim/plug-config/defx.vim

