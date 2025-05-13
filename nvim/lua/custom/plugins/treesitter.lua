return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		branch = "master",
		lazy = false,
		config = function()
			require("custom.configs.treesitter")
		end,
	},
}
