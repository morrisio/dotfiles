local function config()
	local diffview = require("diffview")
	local actions = require("diffview.actions")

	diffview.setup({
		diff_binaries = false,
		keymaps = {
			view = {
				{
					"n",
					"<leader>co",
					actions.conflict_choose("ours"),
					{ desc = "Choose OURS version of a conflict" },
				},
				{
					"n",
					"<leader>ct",
					actions.conflict_choose("theirs"),
					{ desc = "Choose THEIRS version of a conflict" },
				},
				{
					"n",
					"<leader>cb",
					actions.conflict_choose("base"),
					{ desc = "Choose BASE version of a conflict" },
				},
			},
		},
	})
end

return {
	{
		"sindrets/diffview.nvim",
		config = config,
	},
}
