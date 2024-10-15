return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "\\", ":Neotree filesystem reveal float<CR>", { desc = "Toggle neotree" })

		local neotree = require("neo-tree")

		neotree.setup({
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
		})
	end,
}
