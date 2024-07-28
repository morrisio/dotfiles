local set = vim.opt_local

-- Custom commands to open the terminal
vim.api.nvim_create_user_command('Term', '12sp | terminal', {})
vim.api.nvim_create_user_command('VTerm', 'vsp | terminal', {})

-- Customize terminal appearance and behavior
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    set.number = false
    set.relativenumber = false
    set.scrolloff = 0
    vim.cmd "startinsert"
  end,
})

