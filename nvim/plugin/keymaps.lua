local set = vim.keymap.set

-- Don't reach for ESC...
set("i", "fd", "<Esc>", {}) -- ... in insert...
set("v", "fd", "<Esc>", {}) -- ... visual...
set("c", "fd", "<C-C>", {}) -- ... command...
set("t", "fd", "<c-\\><c-n>", {}) -- ... or the terminal.

-- Disable arrow keys in normal mode
set("n", "<left>", "")
set("n", "<right>", "")
set("n", "<up>", "")
set("n", "<down>", "")

-- Make split navigation easier.
set("n", "<leader>j", "<c-w><c-j>", { desc = "Move focus below" })
set("n", "<leader>k", "<c-w><c-k>", { desc = "Move focus above" })
set("n", "<leader>h", "<c-w><c-h>", { desc = "Move focus left" })
set("n", "<leader>l", "<c-w><c-l>", { desc = "Move focus right" })

set("n", "<leader><s-j>", "<c-w>J", { desc = "Move window down" })
set("n", "<leader><s-k>", "<c-w>K", { desc = "Move window up" })
set("n", "<leader><s-h>", "<c-w>H", { desc = "Move window left" })
set("n", "<leader><s-l>", "<c-w>L", { desc = "Move window right" })

-- Clear search results with Esc
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Control the size of splits (height/width)
-- ToDo: Overlaps with i3
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

set("n", "<leader>dp", vim.diagnostic.goto_prev)
set("n", "<leader>dn", vim.diagnostic.goto_next)
set("n", "<leader>dl", vim.diagnostic.open_float)
set("n", "<leader>dq", vim.diagnostic.setqflist)
