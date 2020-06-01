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
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'voldikss/vim-floaterm'
    Plug 'justinmk/vim-sneak'
    " File Browser
    Plug 'preservim/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'ryanoasis/vim-devicons'
    " Switching between files
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()

"NERDTree
let g:NERDTreeMapActivateNode = "l"

" Identline
let g:indentLine_color_term = 255
let g:indentLine_color_gui = '#5C6370'

" Sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" CoC
let g:coc_global_extensions = [
            \   'coc-json',
            \   'coc-clangd'
            \ ]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
