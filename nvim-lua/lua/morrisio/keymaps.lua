-- Get rid of Escape
vim.api.nvim_set_keymap("i", "fd", "<Esc>", {})	-- Don't reach for Esc
vim.api.nvim_set_keymap("t", "fd", "<c-\\><c-n>", {}) -- ... including in the terminal

-- Leader
vim.g.mapleader = " " 					                -- Use Space as the leader key

-- Easier window navigation
vim.api.nvim_set_keymap("n", "<leader>j", "<c-w><c-j>", {})
vim.api.nvim_set_keymap("n", "<leader>k", "<c-w><c-k>", {})
vim.api.nvim_set_keymap("n", "<leader>h", "<c-w><c-h>", {})
vim.api.nvim_set_keymap("n", "<leader>l", "<c-w><c-l>", {})

-- Move in visual line
vim.api.nvim_set_keymap("n", "j", "gj", {})
vim.api.nvim_set_keymap("n", "k", "gk", {})

vim.api.nvim_set_keymap("n", "Y", "y$", {})	-- Yank till end of line

-- Keep cursor in the center when going next/prev
vim.api.nvim_set_keymap("n", "n", "nzzzv", {})
vim.api.nvim_set_keymap("n", "N", "Nzzzv", {})

-- Undo on more characters
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", {})
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", {})
vim.api.nvim_set_keymap("i", "!", "!<c-g>u", {})
vim.api.nvim_set_keymap("i", "?", "?<c-g>u", {})
