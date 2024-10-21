return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local trouble = require("trouble.sources.telescope")

			telescope.setup({
				pickers = {
					find_files = {
						find_command = { "rg", "--files", "--hidden", "-g", "!.git" }, -- show dotfiles respecting .gitignore
					},
				},
				defaults = {
					mappings = {
						i = {
							["<C-p>"] = actions.move_selection_previous, -- move to prev result
							["<C-n>"] = actions.move_selection_next, -- move to next resul
							["<C-t>"] = trouble.open, -- open trouble
						},
						n = {
							["<C-t>"] = trouble.open, -- open trouble
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			telescope.load_extension("ui-select")

			-- set keymaps
			local keymap = vim.keymap
			local builtin = require("telescope.builtin")
			keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
			keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = "[F]ind Recent Files" })
			keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
			keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
			keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[F]ind Existing Buffers" })

			-- Search in current buffer
			keymap.set("n", "<leader>fi", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[F]ind [I]n Current Buffer" })

			-- Shortcut for searching your neovim configuration files
			keymap.set("n", "<leader>fn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[F]ind [N]eovim files" })
		end,
	},
}
