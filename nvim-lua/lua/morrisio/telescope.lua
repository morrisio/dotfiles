local actions = require("telescope.actions")

require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-s>"] = actions.select_horizontal,
            },
        },
    },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fr", builtin.registers, {})
vim.keymap.set("v", "<leader>fr", builtin.registers, {})
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fx", builtin.diagnostics, {})


