" Tab resize
map     <Up>        :resize +2<CR>
map     <Down>      :resize -1<CR>
map     <Left>      :vertical resize +2<CR>
map     <Right>     :vertical resize -2<CR>

" Window movement
nmap    <C-h>       <C-w>h
nmap    <C-j>       <C-w>j
nmap    <C-k>       <C-w>k
nmap    <C-l>       <C-w>l
" Tabs
nmap    <M-h>       :tabprevious<CR>
nmap    <M-l>       :tabnext<CR>
nmap    <M-o>       :tabnew<CR>
nmap    <M-d>       :tabclose<CR>

noremap <C-M-t>     :split term://zsh<CR>:resize 10<CR>i
tmap    <ESC>       <C-\><C-n>:q!<CR>
tmap    <C-j>       <C-\><C-n><C-w>j
tmap    <C-k>       <C-\><C-n><C-w>k

map     <Space>     :noh<CR>

" Move lines up and down in visual mode
xnoremap K          :move '<-2<CR>gv-gv
xnoremap J          :move '>+1<CR>gv-gv

"FZF
nmap    <C-f>       :Files<CR>
nmap    <C-t>       :Tags<CR>

"Linting
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nmap <silent> gd    :call LanguageClient#textDocument_definition()<CR>
nmap <silent> gD    <C-w>v:call LanguageClient#textDocument_definition()<CR>
nmap <silent> gi    :call LanguageClient#textDocument_implementation()<CR>
nmap <silent> gr    :call LanguageClient#textDocument_references()<CR>
nmap <silent> rn    :call LanguageClient#textDocument_rename()<CR>

nmap    <F1>        :NERDTreeTabsToggle<CR>
nmap    <F2>        :TagbarToggle<CR>
