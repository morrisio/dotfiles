" Basics
set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline
set hidden
set cmdheight=2
set signcolumn=yes

set incsearch
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
Plug 'Lokaltog/vim-monotone'
Plug 'jlanzarotta/bufexplorer'
call plug#end()

" Must be called after vim-plug (it provides schemes)
colo monotone

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
