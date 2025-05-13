require("telescope").setup({
	extensions = {
		wrap_results = true,

		fzf = {},
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sd", builtin.lsp_definitions)
vim.keymap.set("n", "<leader>sf", builtin.find_files)
vim.keymap.set("n", "<leader>sg", builtin.live_grep)
vim.keymap.set("n", "<leader>si", builtin.lsp_implementations)
vim.keymap.set("n", "<leader>sr", function()
	builtin.lsp_references({
		fname_width = 0.5,
	})
end)
vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols)
vim.keymap.set("n", "<leader>st", builtin.lsp_type_definitions)
vim.keymap.set("n", "<leader>sp", builtin.registers)
vim.keymap.set("n", "<leader>.", builtin.resume)
vim.keymap.set("n", "<leader><leader>", builtin.buffers)

vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end)
