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
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>q", group = "[Q]uit buffer" },
			{ "<leader>h", group = "[H]arpoon" },
			{ "<leader>n", group = "[N]otes" },
			{ "<leader>nj", group = "[N]otes [J]ournal" },
		})
	end,
}
