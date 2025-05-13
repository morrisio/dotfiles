-- Leader needs to be configured before Lazy
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field

-- Add lazy to runtimepath
vim.opt.rtp:prepend(lazypath)

-- Init lazy to load `lua/plugins`
require("lazy").setup({ import = "custom/plugins" }, {
	change_detection = {
		notify = false,
	},
})
