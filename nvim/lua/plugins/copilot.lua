local function config()
	local copilot = require("copilot")
	copilot.setup({
		suggestion = {
			enabled = true,
			keymap = {
				accept = "<leader>ay",
				next = "<leader>an",
				prev = "<leader>ap",
				dismiss = "ESC",
			},
		},
	})

	vim.api.nvim_set_keymap(
		"n",
		"<leader>at",
		":lua require'copilot.suggestion'.toggle_auto_trigger()<CR>",
		{ desc = "Toggle auto trigger" }
	)
end

return {
	{
		"zbirenbaum/copilot.lua",
		dependencies = {
			"copilotlsp-nvim/copilot-lsp",
		},
		config = config,
		event = "LspAttach",
	},
}
