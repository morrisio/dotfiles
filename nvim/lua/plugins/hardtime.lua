local function config()
	local hardtime = require("hardtime")

	hardtime.setup({
		-- Don't allow more than 2 consecutive presses of the same key.
		max_count = 2,
	})
end

return {
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		config = config,
	},
}
