local transparent = false

if transparent then
	vim.cmd.hi("Normal guibg=NONE ctermbg=NONE")
	vim.cmd.hi("NormalNC guibg=NONE ctermbg=NONE")
	vim.cmd.hi("NonText guibg=NONE ctermbg=NONE")
end
