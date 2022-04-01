filetype on
filetype plugin on
filetype indent on
syntax on

set tabstop=4           " Each tab is 4 columns wide
set shiftwidth=4        " Indentation depth is 4 columns
set expandtab           " Tabs are expanded to spaces
set number              " Line numbers are displayed
set relativenumber      " Display relative line numbers
set showcmd             " Show last command at the bottom of the window
set cmdheight=2         " Command-line is 2 lines high
set cursorline          " Highlight the line the cursor is on
set hidden              " Abandoned buffers are hidden rather than deleted
set signcolumn=yes      " Always show the sign column (used for breakpoints, linter symbols, etc)
set incsearch           " Update search results after each character
set hlsearch            " Highlight search matches
set splitbelow          " Open splits below rather than above current window
set completeopt=menuone,preview,longest "Make the complete menu behave like VS
set wrap                " Softwrap text
set linebreak           " Softwrap lines at word boundaries
set updatetime=500      " Time in ms to wait until buffer is cached (and some plugins triggered)
set wildmenu            " Enhanced command-line completion

let mapleader=" "

set background=light

" Key remaps
imap fd <Esc>
nmap j gj
nmap k gk
tnoremap fd <C-\><C-n>
map <Leader>y "*y
map <Leader>p "*p
nnoremap Y y$

" Keep cursor in the center when going to next/prev
nnoremap n nzzzv
nnoremap N Nzzzv

" Undo on more characters
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>K :m .-2<CR>==
nnoremap <leader>J :m .+1<CR>==

" Easier split navigation
nnoremap <leader>j <c-w><c-j>
nnoremap <leader>k <c-w><c-k>
nnoremap <leader>h <c-w><c-h>
nnoremap <leader>l <c-w><c-l>

" File finding
nnoremap <C-N> :NERDTree<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

if has('termguicolors')
  set termguicolors
endif

source $HOME/.config/nvim/plugins.vim

colorscheme bow-wob

" Opening a terminal
autocmd TermOpen * startinsert | setlocal nonumber norelativenumber
command Term 15sp | terminal
