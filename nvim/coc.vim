" neoclide/coc.nvim config
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc will handle gd in Golang
let g:go_def_mapping_enabled = 0

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting
nmap <leader>f <Plug>(coc-format)
vmap <leader>f <Plug>(coc-format)

" Diagnostics
nmap <silent> g] <Plug>(coc-diagnostic-prev)
nmap <silent> g[ <Plug>(coc-diagnostic-next)
nmap <silent> <leader>ca :<C-u>CocList diagnostics<cr>

" Other commands
nmap <silent> <leader>cc :<C-u>CocList commands<cr>
nmap <silent> <leader>co :<C-u>CocList outline<cr>
nmap <silent> <leader>cs :<C-u>CocList symbols<cr>

