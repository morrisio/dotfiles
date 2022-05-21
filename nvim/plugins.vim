" Plugin refs using https://github.com/junegunn/vim-plug. 
" Must use single quotes
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'fatih/vim-go'
" Make sure yarn is installed before installing coc.nvim
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'chaoren/vim-wordmotion'

Plug 'morhetz/gruvbox'
Plug 'therubymug/vim-pyte'
Plug 'KKPMW/distilled-vim'
Plug 'reedes/vim-colors-pencil'
Plug 'owickstrom/vim-colors-paramount'
Plug 'sainnhe/edge'
Plug 'axvr/photon.vim'
Plug 'vyshane/cleanroom-vim-color'
Plug 'logico/typewriter'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/treesitter.vim
