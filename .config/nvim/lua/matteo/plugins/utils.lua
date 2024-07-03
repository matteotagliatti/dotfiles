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
		-- "gc" to comment visual regions/lines
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		-- Auto save and restore session
		"rmagatti/auto-session",
		opts = {},
	},
	{ -- Collection of various small independent plugins/modules
		"echasnovski/mini.nvim",
		config = function()
			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			--
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sd'   - [S]urround [D]elete [']quotes
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function()
			local wk = require("which-key")
			wk.setup()

			wk.register({
				["<leader>d"] = { name = "[D]iagnostics", _ = "which_key_ignore" },
				["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
				["<leader>fs"] = { name = "[F]ind [S]ymbols", _ = "which_key_ignore" },
				["<leader>g"] = { name = "[G]it", _ = "which_key_ignore" },
				["<leader>t"] = { name = "[T]rouble", _ = "which_key_ignore" },
				["<leader>q"] = { name = "[Q]uit", _ = "which_key_ignore" },
			})
		end,
	},
}
