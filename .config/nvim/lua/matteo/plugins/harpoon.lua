return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		local keymap = vim.keymap

		keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end, { desc = "Append current buffer to Harpoon list" })
		keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon quick menu" })

		keymap.set("n", "1", function()
			harpoon:list():select(1)
		end, { desc = "Select Harpoon list 1" })
		keymap.set("n", "2", function()
			harpoon:list():select(2)
		end, { desc = "Select Harpoon list 2" })
		keymap.set("n", "3", function()
			harpoon:list():select(3)
		end, { desc = "Select Harpoon list 3" })
		keymap.set("n", "4", function()
			harpoon:list():select(4)
		end, { desc = "Select Harpoon list 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		-- keymap.set("n", "5", function()
		-- 	harpoon:list():prev()
		-- end, { desc = "Select previous buffer in Harpoon list" })
		-- keymap.set("n", "6", function()
		-- 	harpoon:list():next()
		-- end, { desc = "Select next buffer in Harpoon list" })
	end,
}
