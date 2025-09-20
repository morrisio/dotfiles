local hardtime = require("hardtime")

hardtime.setup({
	-- Don't allow more than 2 consecutive presses of the same key.
	max_count = 2,
})
