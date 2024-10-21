return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		})

		vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]itsigns preview [h]unk" })
		vim.keymap.set(
			"n",
			"<leader>gt",
			":Gitsigns toggle_current_line_blame<CR>",
			{ desc = "[G]itsigns [t]oggle blame line" }
		)
		vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>", { desc = "[G]itsigns [n]ext hunk" })
		vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>", { desc = "[G]itsigns [p]revious hunk" })
	end,
}
