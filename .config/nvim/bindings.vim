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

"Linting
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nmap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nmap <silent> gD <C-w>v:call LanguageClient#textDocument_definition()<CR>
nmap <silent> gi :call LanguageClient#textDocument_implementation()<CR>
nmap <silent> gr :call LanguageClient#textDocument_references()<CR>
nmap <silent> rn :call LanguageClient#textDocument_rename()<CR>

nmap <F1> :NERDTreeTabsToggle<CR>
nmap <F2> :TagbarToggle<CR>
