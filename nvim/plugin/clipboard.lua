-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

function CopyRelativePathToClipboard()
	local relative_path = vim.fn.expand("%:.")
	if relative_path == "" then
		vim.notify("Error: Current buffer is not a saved file (no name).", vim.log.levels.WARN)
		return
	end
	vim.fn.setreg("+", relative_path)
	vim.notify("Copied relative path: " .. relative_path, vim.log.levels.INFO)
end
