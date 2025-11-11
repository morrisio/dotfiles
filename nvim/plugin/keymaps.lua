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
-- Caution: Overlaps with i3
set("n", "<leader>-", "<c-w>5<", { desc = "Increase horizontal size by 5" })
set("n", "<leader>+", "<c-w>5>", { desc = "Decrease horizontal size by 5" })
set("n", "<leader>,", "<C-W>+", { desc = "Increase vertical size" })
set("n", "<leader>.", "<C-W>-", { desc = "Descrease vertical size" })

set("n", "<leader>dp", function()
	vim.diagnostic.jump({ count = -1 })
end, { desc = "Go to previous diagnostic" })

set("n", "<leader>dn", function()
	vim.diagnostic.jump({ count = 1 })
end, { desc = "Go to next diagnostic" })
set("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Open diagnostics list" })
