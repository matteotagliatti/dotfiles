return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-ui-select.nvim",
		},
		{ -- If encountering errors, see telescope-fzf-native README for installation instructions
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		-- Useful for getting pretty icons, but requires a Nerd Font.
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
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
						["<Esc>"] = actions.close, -- close telescope
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

		keymap.set("n", "<leader>fi", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[F]ind [I]n Current Buffer" })

		vim.keymap.set("n", "<leader>fo", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[F]ind in [O]pen Files" })
	end,
}
