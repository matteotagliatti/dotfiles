return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local empty_extension = { sections = {}, filetypes = { "trouble" } }
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				section_separators = { left = " ", right = "" },
			},
			sections = {
				-- left
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "buffers" },

				-- right
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { empty_extension },
		})
	end,
}
