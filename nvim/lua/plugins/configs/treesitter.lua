local tsconf = require("nvim-treesitter.configs")

tsconf.setup({
	ensure_installed = { "bash", "c", "cpp", "lua", "markdown", "vim", "go" },
	sync_install = false,
	auto_install = true,
	ignore_install = {},

	highlight = { enable = true },
	indent = { enable = true },
})
