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

require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "volar", "eslint" },
})

local lspconfig = require("lspconfig")
lspconfig.volar.setup({
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	init_options = {
		vue = {
			hybridMode = false,
		},
	},
})
lspconfig.ts_ls.setup({
	inlay_hints = { enable = true },
})
lspconfig.eslint.setup({})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })

require("trouble").setup()
