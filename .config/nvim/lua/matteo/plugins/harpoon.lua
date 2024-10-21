return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon").setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, {
			desc = "Add current buffer to Harpoon list",
		})
		vim.keymap.set("n", "<leader>e", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, {
			desc = "Toggle Harpoon list",
		})

		vim.keymap.set("n", "1", function()
			harpoon:list():select(1)
		end, {
			desc = "Select first buffer in Harpoon list",
		})
		vim.keymap.set("n", "2", function()
			harpoon:list():select(2)
		end, {
			desc = "Select second buffer in Harpoon list",
		})
		vim.keymap.set("n", "3", function()
			harpoon:list():select(3)
		end, {
			desc = "Select third buffer in Harpoon list",
		})
		vim.keymap.set("n", "4", function()
			harpoon:list():select(4)
		end, {
			desc = "Select fourth buffer in Harpoon list",
		})

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():prev()
		end, {
			desc = "Toggle previous buffer from Harpoon list",
		})
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():next()
		end, {
			desc = "Toggle next buffer from Harpoon list",
		})
	end,
}
