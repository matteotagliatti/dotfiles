return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
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
				lualine_x = {},
				lualine_y = { "filetype" },
				lualine_z = { "progress" },
			},
			extensions = {},
		})
	end,
}
