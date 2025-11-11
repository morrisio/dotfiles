local function config()
	local rmd = require("render-markdown")
	rmd.setup({
		completions = { lsp = { enabled = true } },
		file_types = { "markdown", "Avante" },
	})
end

return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	config = config,
}
