local set = vim.keymap.set

vim.diagnostic.config({
	signs = true,
	virtual_text = true,
	severity_sort = true,
})

set("n", "<leader>dp", function()
	vim.diagnostic.jump({ count = -1 })
end, { desc = "Go to previous diagnostic" })

set("n", "<leader>dn", function()
	vim.diagnostic.jump({ count = 1 })
end, { desc = "Go to next diagnostic" })

set("n", "<leader>dq", vim.diagnostic.open_float, { desc = "Open diagnostics list" })
