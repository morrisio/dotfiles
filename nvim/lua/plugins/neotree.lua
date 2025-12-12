local function config()
	require("neo-tree").setup({
		event_handlers = {
			{
				-- Close the tree when a file is opened
				event = "file_opened",
				handler = function()
					require("neo-tree.command").execute({ action = "close" })
				end,
			},
		},
		use_popups_for_input = false,
		window = {
			mappings = {
				["c"] = {
					"copy",
					config = {
						show_path = "relative",
					},
				},
				["m"] = {
					"move",
					config = {
						show_path = "relative",
					},
				},
				["s"] = "none",
				["S"] = "none",
				["i"] = "open_split",
				["I"] = "open_vsplit",
			},
		},
	})
	vim.api.nvim_set_keymap("n", "<c-n>", ":Neotree toggle<CR>", {})
	vim.api.nvim_set_keymap("n", "-", ":Neotree reveal<CR>", {})
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = config,
}
