local opts = { noremap = true, silent = true }
local insert = "i"
local normal = "n"
local term = "t"

vim.api.nvim_set_keymap(insert, "fd", "<Esc>", opts)	-- Don't reach for Esc
vim.api.nvim_set_keymap(term, "fd", "<c-\\><c-n>", opts)-- ... including in terminal
vim.g.mapleader = " " 					                -- Use Space as the leader key

-- Easier window navigation
vim.api.nvim_set_keymap(normal, "<leader>j", "<c-w><c-j>", opts)
vim.api.nvim_set_keymap(normal, "<leader>k", "<c-w><c-k>", opts)
vim.api.nvim_set_keymap(normal, "<leader>h", "<c-w><c-h>", opts)
vim.api.nvim_set_keymap(normal, "<leader>l", "<c-w><c-l>", opts)

-- Move in visual line
vim.api.nvim_set_keymap(normal, "j", "gj", opts)
vim.api.nvim_set_keymap(normal, "k", "gk", opts)

vim.api.nvim_set_keymap(normal, "Y", "y$", opts)	-- Yank till end of line

-- Keep cursor in the center when going next/prev
vim.api.nvim_set_keymap(normal, "n", "nzzzv", opts)
vim.api.nvim_set_keymap(normal, "N", "Nzzzv", opts)

-- Undo on more characters
vim.api.nvim_set_keymap(insert, ",", ",<c-g>u", opts)
vim.api.nvim_set_keymap(insert, ".", ".<c-g>u", opts)
vim.api.nvim_set_keymap(insert, "!", "!<c-g>u", opts)
vim.api.nvim_set_keymap(insert, "?", "?<c-g>u", opts)

-- File finding
vim.api.nvim_set_keymap(normal, "<c-n>", ":NERDTreeToggle<CR>", opts)
vim.api.nvim_set_keymap(normal, "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap(normal, "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap(normal, "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap(normal, "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
vim.api.nvim_set_keymap(normal, "<leader>ft", ":NERDTreeFind<CR>", opts)
