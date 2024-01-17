vim.cmd('set background=dark')
vim.cmd('colorscheme gruvbox')

local options = {
	clipboard = "unnamedplus", 	-- Use system clipboard
	cmdheight = 2,			-- Higher command line
	completeopt = {             	-- Make complete menu behave like VS
	"menuone", "preview", "longest" 
},
cursorline = true,		    	-- Highlight current line
fileencoding = "utf-8",			-- Save as UTF-8
updatetime = 100,		    	-- Faster completion
wildmenu = true,			-- Enhanced commandline completion

foldexpr = "nvim_treesitter#foldexpr()",		-- Use Treesitter for folding
foldlevelstart = 20,        		-- Open files unfolded
foldmethod = "expr",			-- Use Treesitter for folding
hidden = true,			    	-- Abandoned buffers are hidden rather than deleted

hlsearch = true,			-- Highlight all search matches
incsearch = true,		    	-- Update search results after each character

colorcolumn = "100",
number = true,              		-- Show line numbers
relativenumber = true,          -- Show relative line numbers

scrolloff = 8,              		-- Scroll this number of lines from top/bottom
showcmd = true,             		-- Show command at the bottom
signcolumn = "yes",		    	-- Always show the sign column (for breakpoints, linters)
ignorecase = true,		    	-- Ignore case when searching by default (but see below)
smartcase = true,		    	-- Switch to case sensitive if search patter contains uppercase chars
splitbelow = true,		    	-- Open splits below
splitright = false,		    	-- Open splits to the left

expandtab = true,		    	-- Tabs to spaces
shiftwidth = 4,             	-- Indentation is 4 spaces deep
tabstop = 4,			    	-- Tabs are 4 columns wide
softtabstop = 4,

termguicolors = true,

wrap = true,			    	-- Softwrap text
linebreak = true,		    	-- Softwrap lines at word boundaries
textwidth = 100,

swapfile = false,                -- No swaps or backups
backup = false,
undodir = os.getenv("HOME") .. "/.vim/undodir",
undofile = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.go_test_timeout = '30s'
