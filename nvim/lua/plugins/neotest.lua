local function config()
	require("neotest").setup({
		adapters = {
			require("neotest-golang")({
				go_test_args = { "-v", "-tags=integration" },
				go_list_args = { "-tags=integration" },
				dap_go_opts = {
					delve = {
						build_flags = { "-tags=integration" },
					},
				},
			}),
		},
	})

	vim.api.nvim_set_keymap("n", "<leader>tt", ":lua require'neotest'.run.run()<CR>", { desc = "Run nearest test" })
	vim.api.nvim_set_keymap(
		"n",
		"<leader>td",
		":lua require'neotest'.run.run({strategy='dap'})<CR>",
		{ desc = "Debug nearest test" }
	)
end

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"fredrikaverpil/neotest-golang",
	},
	config = config,
}
