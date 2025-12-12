local opt = vim.opt

-- Reload changed files (unless they have pending local changes)
opt.autoread = true

-- Check for external file changes on buffer enter and focus gained.
local augroup = vim.api.nvim_create_augroup("ReloadExternalChanges", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained" }, {
	group = augroup,
	callback = function()
		vim.cmd("checktime")
	end,
	desc = "Force checktime on focus/buffer switch to reload external changes",
})
-- Preview substitutions live
opt.inccommand = "split"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Display relative line numbers with current line number
opt.number = true
opt.relativenumber = true

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Help keep lines to 120 chars or less
opt.colorcolumn = "120"
opt.textwidth = 120

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"
-- ToDo: Add mappings for <Space>y and <Space>p instead?

-- Prevent `o` from adding a comment
opt.formatoptions:remove("o")

-- Wrapped lines maintain indentation
opt.breakindent = true

-- Tabs be gone
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 6

-- Number of lines to scroll when using ctrl-u and ctrl-d
opt.scroll = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Show tabs and spaces
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
