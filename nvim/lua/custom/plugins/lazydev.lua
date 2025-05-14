return {
	"folke/lazydev.nvim",
	dependencies = {
		-- Better nvim lua dev
		"Bilal2453/luvit-meta",
	},
	config = function()
		require("custom.configs.lazydev")
	end,
}
