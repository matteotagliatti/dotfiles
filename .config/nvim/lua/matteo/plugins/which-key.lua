return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.setup({
			icons = {
				rules = false,
			},
		})

		wk.add({
			{ "<leader>d", group = "[D]iagnostics" },
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>t", group = "[T]rouble" },
			{ "<leader>q", group = "[Q]uit" },
		})
	end,
}
