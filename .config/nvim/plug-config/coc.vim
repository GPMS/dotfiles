let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-clangd',
\ 'coc-snippets',
\ 'coc-explorer',
\ 'coc-vimlsp'
\ ]

function! ShowDocumentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" Snippets jump with tab
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

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

nnoremap                <leader>gh      :CocCommand clangd.switchSourceHeader<CR>
nnoremap                <leader>gH      :vsplit<CR>:CocCommand clangd.switchSourceHeader<CR>

nnoremap                <F1>            :CocCommand explorer<CR>

