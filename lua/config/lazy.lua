
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell.error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim", "ErrorMsg" }, 
			{ out, "WaringMsg" }, 
			{ "Press any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
	spec = {
		{ import = "plugins" }
	},

	checker = { enabled = true }
})

