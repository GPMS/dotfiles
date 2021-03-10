nnoremap                <C-s>           :w<CR>
nnoremap                <C-q>           :q<CR>

nnoremap                H               ^
nnoremap                L               $

" Tab resize
noremap                 <Up>            :resize +2<CR>
noremap                 <Down>          :resize -1<CR>
noremap                 <Left>          :vertical resize +2<CR>
noremap                 <Right>         :vertical resize -2<CR>

" Window movement
nnoremap                <C-h>           :wincmd h<CR>
nnoremap                <C-j>           :wincmd j<CR>
nnoremap                <C-k>           :wincmd k<CR>
nnoremap                <C-l>           :wincmd l<CR>

" Tabs
nnoremap                <TAB>           :tabnext<CR>
nnoremap                <S-TAB>         :tabprevious<CR>

" Move text
vnoremap                J               :m '>+1<CR>gv=gv
vnoremap                K               :m '<-2<CR>gv=gv

" Better tabbing
vnoremap                <               <gv
vnoremap                >               >gv

"FZF
nnoremap                <C-p>           :Files<CR>
nnoremap    <silent>    <C-t>           :! ctags --exclude={.vscode,compile_commands.json} -R .<CR>:Tags<CR>

"Incsearch
map                     /               <Plug>(incsearch-forward)
map                     ?               <Plug>(incsearch-backward)
map                     g/              <Plug>(incsearch-stay)

nnoremap                gF              :vsplit<CR>gf

nnoremap                <F2>            :TagbarToggle<CR>

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

function! TermOpen(height)
    if !win_gotoid(g:term_win)
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap    <silent>    <A-t>           :call TermToggle(12)<CR>
tnoremap    <silent>    <A-t>           <C-\><C-n>:call TermToggle(12)<CR>
tnoremap    <silent>    <C-k>           <C-\><C-n>:wincmd k<CR>
tnoremap    <silent>    <F3>            clear<CR>Scripts/build.sh<CR>
tnoremap    <silent>    <F4>            clear<CR>Scripts/run.sh<CR>
nnoremap    <silent>    <F3>            :call TermOpen(12)<CR>:startinsert<CR>clear<CR>Scripts/build.sh<CR>
nnoremap    <silent>    <F4>            :call TermOpen(12)<CR>:startinsert<CR>clear<CR>Scripts/run.sh<CR>

