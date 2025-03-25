return {
	{
		-- Auto close pairs of characters
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		-- Use treesitter to close and autorename HTML tags
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
	{ "echasnovski/mini.surround", version = false, opts = {} },
	{
		"matteotagliatti/notes.nvim",
		-- dir = "~/Dev/personal/notes.nvim",
		-- dev = true,
		config = function()
			require("notes").setup()
		end,
	},
}
