lua require'lspconfig'.clangd.setup{}
let g:deoplete#enable_at_startup = 1

imap        <expr>      <C-k>           ("\<C-p>")
imap        <expr>      <C-j>           ("\<C-n>")
imap        <expr>      <C-l>           pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <C-space>       coc#refresh()

nmap                    <leader>gd      <Plug>(coc-definition)
nmap                    <leader>gD      :wincmd v<CR> <Plug>(coc-definition)
nmap                    <leader>gi      <Plug>(coc-implementation)
nmap                    <leader>gr      <Plug>(coc-references)
nnoremap    <silent>    K               :call ShowDocumentation()<CR>
xmap                    <leader>f       <Plug>(coc-format-selected)
nmap                    <leader>f       <Plug>(coc-format-selected)

nmap                    <leader>rn      <Plug>(coc-rename)

nnoremap                <leader>gh      :ClangdSwitchSourceHeader<CR>
nnoremap                <leader>gH      :vsplit<CR>:ClangdSwitchSourceHeader<CR>
