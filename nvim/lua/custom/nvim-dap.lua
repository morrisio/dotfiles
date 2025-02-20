local dap = require("dap")
local dapui = require("dapui")
local dapgo = require("dap-go")

dapui.setup()
dapgo.setup()

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end

vim.api.nvim_set_keymap("n", "<leader>bb", ":lua require'dap'.toggle_breakpoint()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bl", ":lua require'dap'.list_breakpoints()<CR>:cw<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bx", ":lua require'dap'.clear_breakpoints()<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>bq", ":lua require'dap'.terminate()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>br", ":lua require'dap'.restart()<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>bi", ":lua require'dap'.step_into()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bp", ":lua require'dap'.step_out()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bo", ":lua require'dap'.step_over()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bn", ":lua require'dap'.continue()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>bh", ":lua require'dap'.run_to_cursor()<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>bt", ":lua require'dap-go'.debug_test()<CR>", {})

-- nnoremap \; :lua require'dap'.run_last()<CR>

-- nnoremap \e :lua require("dapui").eval(nil, { enter = true })<CR>
-- nnoremap \E :lua require'dap'.repl.open()<CR>
