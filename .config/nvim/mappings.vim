nnoremap                <C-s>           :w<CR>
nnoremap                <C-q>           :wq!<CR>

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

" Better tabbing
vnoremap                <               <gv
vnoremap                >               >gv

"FZF
nnoremap                <C-f>           :Files<CR>
nnoremap                <C-t>           :! ctags --exclude={.vscode,compile_commands.json} -R .<CR>:Tags<CR>

"Linting

" Browse completion up/down with ctrl+k/j and confirm with ctrl+l
imap        <expr>      <C-k>           ("\<C-p>")
imap        <expr>      <C-j>           ("\<C-n>")
imap        <expr>      <C-l>           pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap                    <leader>gd      <Plug>(coc-definition)
nmap                    <leader>gD      <Plug>(coc-type-definition)
nmap                    <leader>gi      <Plug>(coc-implementation)
nmap                    <leader>gr      <Plug>(coc-references)

nmap                    <leader>rn      <Plug>(coc-rename)

nnoremap                <leader>gh      :CocCommand clangd.switchSourceHeader<CR>
nnoremap                <leader>gH      :vsplit<CR>:CocCommand clangd.switchSourceHeader<CR>

nnoremap                <F1>            :CocCommand explorer<CR>
nnoremap                <F2>            :TagbarToggle<CR>

" Float Term
nnoremap                <F3>            :FloatermNew make<CR>
nnoremap                <F4>            :FloatermNew ./game<CR>
nnoremap                <F9>            :FloatermNew<CR>
tnoremap                <F9>            <C-\><C-n>:FloatermNew<CR>
nnoremap                <F10>           :FloatermPrev<CR>
tnoremap                <F10>           <C-\><C-n>:FloatermPrev<CR>
nnoremap                <F11>           :FloatermNext<CR>
tnoremap                <F11>           <C-\><C-n>:FloatermNext<CR>
nnoremap                <F12>           :FloatermToggle<CR>
tnoremap                <F12>           <C-\><C-n>:FloatermToggle<CR>
