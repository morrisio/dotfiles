local hardtime = require("hardtime")

hardtime.setup({
	-- Don't allow more than 2 consecutive presses of the same key.
	max_count = 2,
})

vim.keymap.set("n", "<leader>t", ":Hardtime toggle<CR>", { desc = "Toggle hardtime" })
