-- Get rid of Escape
vim.keymap.set("i", "fd", "<Esc>", {})	        -- Don't reach for Esc in insert...
vim.keymap.set("v", "fd", "<Esc>", {})	        -- ... visual...
vim.keymap.set("c", "fd", "<C-C>", {})	        -- ... command...
vim.keymap.set("t", "fd", "<c-\\><c-n>", {})    -- ... and the terminal.

-- Move by visual line
vim.keymap.set("n", "j", "gj", {})
vim.keymap.set("n", "k", "gk", {})

-- Easier window navigation
vim.keymap.set("n", "<leader>j", "<c-w><c-j>", {})
vim.keymap.set("n", "<leader>k", "<c-w><c-k>", {})
vim.keymap.set("n", "<leader>h", "<c-w><c-h>", {})
vim.keymap.set("n", "<leader>l", "<c-w><c-l>", {})

vim.keymap.set("n", "<leader><s-j>", "<c-w>J", {})
vim.keymap.set("n", "<leader><s-k>", "<c-w>K", {})
vim.keymap.set("n", "<leader><s-h>", "<c-w>H", {})
vim.keymap.set("n", "<leader><s-l>", "<c-w>L", {})


-- Move visual selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "y$", {})	-- Yank till end of line

-- Keep cursor in the center when going next/prev
vim.keymap.set("n", "n", "nzzzv", {})
vim.keymap.set("n", "N", "Nzzzv", {})

-- Undo on more characters
vim.keymap.set("i", ",", ",<c-g>u", {})
vim.keymap.set("i", ".", ".<c-g>u", {})
vim.keymap.set("i", "!", "!<c-g>u", {})
vim.keymap.set("i", "?", "?<c-g>u", {})
