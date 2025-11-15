local function config()
	vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
	vim.keymap.set("n", "S", "<Plug>(leap-backward)")
end

return {
	"ggandor/leap.nvim",
	config = config,
}
