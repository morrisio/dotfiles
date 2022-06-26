vim.api.nvim_command('autocmd TermOpen * startinsert | setlocal nonumber norelativenumber')

vim.api.nvim_create_user_command(
    'Term',
    "15sp | terminal",
    {})

vim.api.nvim_create_user_command(
    'VTerm',
    "vsp | terminal",
    {})
