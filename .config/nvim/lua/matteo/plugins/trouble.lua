return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local t = require("trouble")

		vim.keymap.set("n", "<leader>tt", function()
			t.toggle("telescope")
		end, { desc = "Trouble telescope" })

		vim.keymap.set("n", "<leader>td", function()
			t.toggle("diagnostics")
		end, { desc = "Toggle Document Diagnostics" })

		vim.keymap.set("n", "<leader>tq", function()
			t.toggle("quickfix")
		end, { desc = "Toggle Quickfix" })

		vim.keymap.set("n", "<leader>tl", function()
			t.toggle("loclist")
		end, { desc = "Toggle Location List" })
	end,
}
