local function config()
	local copilot = require("copilot")
	copilot.setup({
		suggestion = {
			keymap = {
				accept = "<leader>cy",
				next = "<leader>cn",
				prev = "<leader>cp",
				dismiss = "ESC",
			},
		},
	})
end

return {
	{
		"zbirenbaum/copilot.lua",
		dependencies = {
			"copilotlsp-nvim/copilot-lsp",
		},
		config = config,
		event = "InsertEnter",
	},
}
