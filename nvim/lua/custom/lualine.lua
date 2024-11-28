local lualine = require("lualine")

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "codedark",
		section_separators = {},
		component_separators = {},
	},
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
	},
})
