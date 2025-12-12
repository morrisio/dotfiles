local function config()
	local dap = require("dap")
	local dapui = require("dapui")
	local dapgo = require("dap-go")

	dapui.setup()
	dapgo.setup({
		delve = {
			enable = true,
			build_flags = "-tags=integration",
		},
	})

	dap.listeners.before.attach.dapui_config = function()
		dapui.open()
	end

	dap.listeners.before.launch.dapui_config = function()
		dapui.open()
	end

	vim.api.nvim_set_keymap("n", "<leader>bb", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
	vim.api.nvim_set_keymap(
		"n",
		"<leader>bl",
		":lua require'dap'.list_breakpoints()<CR>:cw<CR>",
		{ desc = "List Breakpoints" }
	)
	vim.api.nvim_set_keymap("n", "<leader>bc", ":lua require'dap'.clear_breakpoints()<CR>", { desc = "Clear breakpoints" })

	vim.api.nvim_set_keymap("n", "<leader>bt", ":lua require'dap'.terminate()<CR>", { desc = "Terminate debug session" })
	vim.api.nvim_set_keymap("n", "<leader>br", ":lua require'dap'.restart()<CR>", { desc = "Restart debug session" })
	vim.api.nvim_set_keymap("n", "<leader>bq", ":lua require'dapui'.close()<CR>", { desc = "Close debug UI" })

	vim.api.nvim_set_keymap("n", "<leader>bi", ":lua require'dap'.step_into()<CR>", { desc = "Step into" })
	vim.api.nvim_set_keymap("n", "<leader>bp", ":lua require'dap'.step_out()<CR>", { desc = "Step out" })
	vim.api.nvim_set_keymap("n", "<leader>bo", ":lua require'dap'.step_over()<CR>", { desc = "Step over" })
	vim.api.nvim_set_keymap("n", "<leader>bn", ":lua require'dap'.continue()<CR>", { desc = "Run to next" })
	vim.api.nvim_set_keymap("n", "<leader>bh", ":lua require'dap'.run_to_cursor()<CR>", { desc = "Run to cursor" })

	-- nnoremap \; :lua require'dap'.run_last()<CR>

	-- nnoremap \e :lua require("dapui").eval(nil, { enter = true })<CR>
	-- nnoremap \E :lua require'dap'.repl.open()<CR>
end

return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
		},
		config = config,
	},
}
