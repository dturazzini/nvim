------------------------------
-- Plugin: catppuccin
------------------------------

return {
	{
		"catppuccin/nvim",	
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "frappe",
				transparent_background = true,
				integrations = {
					bufferline = true,
					which_key = true,
					telescope = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
