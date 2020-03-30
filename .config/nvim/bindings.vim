nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <M-h> :tabprevious<CR>
nmap <M-l> :tabnext<CR>
nmap <M-o> :tabnew<CR>
nmap <M-d> :tabclose<CR>

noremap <C-M-t> :split term://zsh<CR>:resize 10<CR>i
tmap <ESC> <C-\><C-n>:q!<CR>
tmap <C-j> <C-\><C-n><C-w>j
tmap <C-k> <C-\><C-n><C-w>k

map <space> :noh<CR>

"FZF
nmap <C-f> :Files<CR>
nmap <C-t> :Tags<CR>

"CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap rn <Plug>(coc-rename)

nmap <F1> :NERDTreeTabsToggle<CR>
nmap <F2> :TagbarToggle<CR>