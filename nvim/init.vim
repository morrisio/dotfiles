" Formatting
set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline

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
call plug#end()

" vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
