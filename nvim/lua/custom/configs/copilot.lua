vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', {
	expr = true,
	replace_keycodes = false,
})

vim.keymap.set("i", "<C-L>", "copilot#AcceptWord()", {
	expr = true,
	replace_keycodes = false,
})

vim.keymap.set("i", "<C-H>", "copilot#Next()", {
	expr = true,
	replace_keycodes = false,
})

vim.keymap.set("i", "<C-I>", "copilot#Suggest()", {
	expr = true,
	replace_keycodes = false,
})

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_enabled = false

vim.g.copilot_filetypes = { markdown = false }
