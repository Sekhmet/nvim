require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.diagnostic.config({ virtual_text = true })

-- Command height
vim.opt.cmdheight = 0

vim.api.nvim_create_autocmd("RecordingEnter", {
	callback = function()
		vim.opt.cmdheight = 1
	end,
})
vim.api.nvim_create_autocmd("RecordingLeave", {
	callback = function()
		vim.opt.cmdheight = 0
	end,
})
