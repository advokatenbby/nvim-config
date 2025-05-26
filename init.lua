require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.wo.number = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.o.background = "dark"
vim.cmd("colorscheme onedark")

