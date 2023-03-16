local util = require("util")

return {

	-- Add Swift to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				util.list_insert_unique(opts.ensure_installed, "swift")
			end
		end,
	},

	-- Correctly setup lspconfig for Swift 🚀
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				sourcekit = {},
			},
			settings = {
				sourcekit = {
					filetypes = { "swift", "objective-c", "objective-cpp" },
				},
			},
		},
	},
}
