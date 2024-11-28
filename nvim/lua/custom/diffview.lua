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
				{ desc = "Choose the OURS version of a conflict" },
			},
			{
				"n",
				"<leader>ct",
				actions.conflict_choose("theirs"),
				{ desc = "Choose the THEIRS version of a conflict" },
			},
			{
				"n",
				"<leader>cb",
				actions.conflict_choose("base"),
				{ desc = "Choose the BASE version of a conflict" },
			},
		},
	},
})
