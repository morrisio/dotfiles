set tabstop=4           " Each tab is 4 columns wide
set shiftwidth=4        " Indentation depth is 4 columns
set expandtab           " Tabs are expanded to spaces
set number              " Line numbers are displayed
set showcmd             " Show last command at the bottom of the window
set cmdheight=2         " Command-line is 2 lines high
set cursorline          " Highlight the line the cursor is on
set hidden              " Abandoned buffers are hidden rather than deleted
set signcolumn=yes      " Always show the sign column (used for breakpoints, linter symbols, etc)
set incsearch           " Update search results after each character
set hlsearch            " Highlight search matches
set splitbelow          " Open splits below rather than above current window
set relativenumber      " Display relative line numbers
set completeopt=menuone,preview,longest "Make the complete menu behave like VS

let mapleader=","

"set background=light

" Key remaps
imap fd <Esc>
nmap j gj
nmap k gk
tnoremap fd <C-\><C-n>
map <Leader>y "+y
map <Leader>p "+p

if has('termguicolors')
  set termguicolors
endif

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/coc.vim

colorscheme bow-wob

autocmd TermOpen * startinsert | setlocal nonumber norelativenumber
command Term 15sp | terminal
