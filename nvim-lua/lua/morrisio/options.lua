local options = {
    backup = false, 			-- Don't create a backup file
    clipboard = "unnamedplus", 	-- Use system clipboard
    cmdheight = 2,			    -- Higher command line
    completeopt = {             -- Make complete menu behave like VS
        "menuone", "preview", "longest" 
    },
    cursorline = true,		    -- Highlight current line
    expandtab = true,		    -- Tabs to spaces
    fileencoding = "utf-8",		-- Save as UTF-8
    foldexpr = "nvim_treesitter#foldexpr()",		-- Use Treesitter for folding
    foldlevelstart = 20,        -- Open files unfolded
    foldmethod = "expr",		-- Use Treesitter for folding
    hidden = true,			    -- Abandoned buffers are hidden rather than deleted
    hlsearch = true,			-- Highlight all search matches
    incsearch = true,		    -- Update search results after each character
    linebreak = true,		    -- Softwrap lines at word boundaries
    number = true,              -- Show line numbers
    scrolloff = 8,              -- Scroll this number of lines from top/bottom
    shiftwidth = 4,             -- Indentation is 4 spaces deep
    showcmd = true,             -- Show command at the bottom
    signcolumn = "yes",		    -- Always show the sign column (for breakpoints, linters)
    ignorecase = true,		    -- Ignore case when searching by default (but see below)
    smartcase = true,		    -- Switch to case sensitive if search patter contains uppercase chars
    splitbelow = true,		    -- Open splits below
    splitright = true,		    -- Open splits to the right
    tabstop = 4,			    -- Tabs are 4 columns wide
    termguicolors = true,
    updatetime = 300,		    -- Faster completion
    wildmenu = true,			-- Enhanced commandline completion
    wrap = true,			    -- Softwrap text
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
