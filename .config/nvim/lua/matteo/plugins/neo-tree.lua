return {
	'nvim-neo-tree/neo-tree.nvim',
	version = '*',
	dependencies = {
	  'nvim-lua/plenary.nvim',
	  'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
	  'MunifTanjim/nui.nvim',
	},
	lazy = false,
	keys = {
	  { '\\', ':Neotree filesystem reveal float<CR>', desc = 'NeoTree filesystem reveal float', silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					".git",
					".DS_Store",
					"thumbs.db",
				},
				never_show = {},
			},
		},
	},
  }