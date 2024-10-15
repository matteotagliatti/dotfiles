return {
	{
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
	},
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
}
