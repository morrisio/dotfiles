local lazydev = require("lazydev")

---@diagnostic disable-next-line: missing-fields
lazydev.setup({
	runtime = vim.env.VIMRUNTIME --[[@as string]],
	library = {
		plugins = { "nvim-dap-ui" },
		types = "true",
		"luvit-meta/library",
	},
})
