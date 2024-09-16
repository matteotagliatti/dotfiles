return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local t = require("trouble")

		vim.keymap.set("n", "<leader>tt", function()
			t.toggle("telescope")
		end, { desc = "[T]rouble [T]elescope" })

		vim.keymap.set("n", "<leader>tf", function()
			t.toggle("telescope_files")
		end, { desc = "[T]rouble Telescope [F]iles" })

		vim.keymap.set("n", "<leader>td", function()
			t.toggle("diagnostics")
		end, { desc = "[T]rouble [D]iagnostics" })

		vim.keymap.set("n", "<leader>tq", function()
			t.toggle("quickfix")
		end, { desc = "[T]rouble [Q]uickfix" })
	end,
}
