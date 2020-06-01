" Tab resize
map     <Up>        :resize +2<CR>
map     <Down>      :resize -1<CR>
map     <Left>      :vertical resize +2<CR>
map     <Right>     :vertical resize -2<CR>

" Window movement
nmap    <C-h>       :wincmd h<CR>
nmap    <C-j>       :wincmd j<CR>
nmap    <C-k>       :wincmd k<CR>
nmap    <C-l>       :wincmd l<CR>

" Tabs
nmap    <M-H>       :tabfirst<CR>
nmap    <M-L>       :tablast<CR>
nmap    <M-h>       :tabprevious<CR>
nmap    <M-l>       :tabnext<CR>
nmap    <M-o>       :tabnew<Space>
nmap    <M-q>       :tabclose<CR>

map     <Space>     :noh<CR>

" Move lines up and down in visual mode
xnoremap K          :move '<-2<CR>gv-gv
xnoremap J          :move '>+1<CR>gv-gv

"FZF
nmap    <C-f>       :Files<CR>
nmap    <C-t>       :! ctags --exclude={.vscode,compile_commands.json} -R .<CR>:Tags<CR>

"Linting
nmap <silent> gd    <Plug>(coc-definition)
nmap <silent> gD    <Plug>(coc-type-definition)
nmap <silent> gi    <Plug>(coc-implementation)
nmap <silent> gr    <Plug>(coc-references)
nmap <silent> rn    <Plug>(coc-rename)
nmap <silent> gh    :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> gH    :vsplit<CR>:CocCommand clangd.switchSourceHeader<CR>

nmap    <F1>        :NERDTreeTabsToggle<CR>
nmap    <F2>        :TagbarToggle<CR>
" Float Term
nmap                    <F3>    :FloatermNew make<CR>
nmap                    <F4>    :FloatermNew ./game<CR>

nnoremap    <silent>    <F9>    :FloatermNew<CR>
tnoremap    <silent>    <F9>    <C-\><C-n>:FloatermNew<CR>
nnoremap    <silent>    <F10>    :FloatermPrev<CR>
tnoremap    <silent>    <F10>    <C-\><C-n>:FloatermPrev<CR>
nnoremap    <silent>    <F11>    :FloatermNext<CR>
tnoremap    <silent>    <F11>    <C-\><C-n>:FloatermNext<CR>
nnoremap    <silent>    <F12>   :FloatermToggle<CR>
tnoremap    <silent>    <F12>   <C-\><C-n>:FloatermToggle<CR>
