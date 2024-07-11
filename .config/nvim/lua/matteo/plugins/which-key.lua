return {
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
}
