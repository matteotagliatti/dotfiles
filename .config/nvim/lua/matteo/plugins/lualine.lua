return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"letieu/harpoon-lualine",
		{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
		},
	},
	config = function()
		local empty_extension = { sections = {}, filetypes = { "trouble" } }
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				separator = { left = "", right = "" },
			},
			sections = {
				-- left
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					"buffers",
				},

				-- right
				lualine_x = {
					{
						"harpoon2",
						icon = "",
						indicators = { "1", "2", "3", "4" },
						active_indicators = { "1", "2", "3", "4" },
						color_active = { fg = "#89b4fa" },
						_separator = " ",
						no_harpoon = "Harpoon not loaded",
					},
				},
				lualine_y = { "filetype" },
				lualine_z = { "progress" },
			},
			extensions = { empty_extension },
		})
	end,
}
