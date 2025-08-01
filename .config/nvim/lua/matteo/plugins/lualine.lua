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
		local function format_harpoon_filename(harpoon_entry)
			local filename = vim.fn.fnamemodify(harpoon_entry.value, ":t")
			if #filename > 12 then
				return string.sub(filename, 1, 9) .. "..."
			end
			return filename
		end

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
						indicators = {
							format_harpoon_filename,
							format_harpoon_filename,
							format_harpoon_filename,
							format_harpoon_filename,
						},
						active_indicators = {
							format_harpoon_filename,
							format_harpoon_filename,
							format_harpoon_filename,
							format_harpoon_filename,
						},
						color = { fg = "#6c7086" },
						color_active = { fg = "#cdd6f4" },
						_separator = " ",
						no_harpoon = "Harpoon not loaded",
					},
				},
				lualine_y = { "filetype" },
				lualine_z = { "progress" },
			},
			extensions = {},
		})
	end,
}
