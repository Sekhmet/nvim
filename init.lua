require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = true

vim.diagnostic.config({ virtual_text = true })
