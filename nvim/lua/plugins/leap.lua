local function config()
	vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)", { desc = "Leap forward" })
	vim.keymap.set("n", "S", "<Plug>(leap-backward)", { desc = "Leap backward" })
end

return {
	"ggandor/leap.nvim",
	config = config,
}
