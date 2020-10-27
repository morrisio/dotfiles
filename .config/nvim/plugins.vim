" Plugin refs using https://github.com/junegunn/vim-plug. 
" Must use single quotes
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
" Make sure yarn is installed before installing coc.nvim
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'morrisio/vim-bow-wob'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
