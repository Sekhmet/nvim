return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
			})

			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
