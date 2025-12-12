local function config()
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

	vim.keymap.set("n", "<leader>sd", builtin.lsp_definitions, { desc = "Search definitions" })
	vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search files" })
	vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search with grep" })
	vim.keymap.set("n", "<leader>si", builtin.lsp_implementations, { desc = "Search implementations" })
	vim.keymap.set("n", "<leader>sr", function()
		builtin.lsp_references({
			fname_width = 0.5,
		})
	end, { desc = "Search references" })
	vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols, { desc = "Search document symbols" })
	vim.keymap.set("n", "<leader>st", builtin.lsp_type_definitions, { desc = "Search type definitions" })
	vim.keymap.set("n", "<leader>sp", builtin.registers, { desc = "Search registers" })
	vim.keymap.set("n", "<leader>.", builtin.resume, { desc = "Search resume" })
	vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Search buffers" })

	vim.keymap.set("n", "<leader>/", function()
		builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "Search in current buffer" })
end

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = config,
	},
}
