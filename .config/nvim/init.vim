" Each tab is 4 columns wide
set tabstop=4
" Indentation depth is 4 columns
set shiftwidth=4
" Tabs are expanded to spaces
set expandtab
" Line numbers are displayed
set number
" Show last command at the bottom of the window
set showcmd
" Command-line is 2 lines high
set cmdheight=2
" Highlight the line the cursor is on
set cursorline
" Abandoned buffers are hidden rather than deleted
set hidden
" Always show the sign column (used for breakpoints, linter symbols, etc)
set signcolumn=yes
" Update search results after each character
set incsearch
" Highlight search matches
set hlsearch

let mapleader=","

" Key remaps
imap fd <Esc>
nmap j gj
nmap k gk

" Plugin refs using https://github.com/junegunn/vim-plug. 
" Must use single quotes
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()


" coc config
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc will handle gd
let g:go_def_mapping_enabled = 0
