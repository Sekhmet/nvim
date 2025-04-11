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

lspconfig.eslint.setup({})
lspconfig.volar.setup({})
lspconfig.vtsls.setup({
	enabled = true,
	filetypes = { "typescript", "javascript", "vue" },
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					{
						name = "@vue/typescript-plugin",
						location = require("mason-registry").get_package("vue-language-server"):get_install_path()
							.. "/node_modules/@vue/language-server",
						languages = { "vue" },
						configNamespace = "typescript",
						enableForWorkspaceTypeScriptVersion = true,
					},
				},
			},
		},
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })

require("trouble").setup()
