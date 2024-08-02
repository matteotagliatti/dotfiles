return {
	{
		-- Detect tabstop and shiftwidth automatically
		"tpope/vim-sleuth",
	},
	{
		-- Auto close pairs of characters
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
	{
		-- "gc" to comment visual regions/lines
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		-- Auto save and restore session
		"rmagatti/auto-session",
		opts = {},
	},
}
