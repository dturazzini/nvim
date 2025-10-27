------------------------------
-- Plugin: treesitter
------------------------------

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require'nvim-treesitter.configs'.setup{
				ensure_installed = {
					"cpp", "python", "lua", "c", "luadoc", "vim", "vimdoc","rust",
				},
				sync_install = false,
				auto_install = true,
				ignore_install = { "" }, -- List of parsers to ignore installing
				highlight = {
					enable = true, -- false will disable the whole extension
					disable = { "" }, -- list of language that will be disabled
					additional_vim_regex_highlighting = false,
				},
			}
		end,
	},
}
