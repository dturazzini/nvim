------------------------------
-- Plugin: bufferline
------------------------------

return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"echasnovski/mini.bufremove",
			"catppuccin/nvim",
		},
		config = function()
			local bufferline = require("bufferline")

			bufferline.setup({
				options = {
					close_command = function(n)
						require("mini.bufremove").delete(n, false)
					end,
					right_mouse_command = function(n)
						require("mini.bufremove").delete(n, false)
					end,
					
					hover = {
						enabled = true,
						delay = 150,
						reveal = {"close"}
					},

					separator_style = "slant",
					always_show_bufferline = false,
					
					offsets = {
						{
							text = "File explorer",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
				highlights = require("catppuccin.special.bufferline").get_theme({
					styles = { "bold" },
					custom = { all = {}},
				}),
			})
		end,
	},
}
