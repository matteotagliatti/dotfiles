return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon").setup()

		-- stylua: ignore
		vim.keymap.set("n", "<leader>hh", function() harpoon:list():add() end, { desc = "[H]arpoon add current buffer" })
		vim.keymap.set("n", "<leader>ht", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[H]arpoon [t]oggle list" })
		vim.keymap.set("n", "<leader>hq", function() harpoon:list():remove() end, { desc = "[H]arpoon remove current buffer" })
		vim.keymap.set("n", "<leader>ha", function() local current_file = vim.api.nvim_buf_get_name(0) if current_file ~= "" then harpoon:list():clear() harpoon:list():add() end end, { desc = "[H]arpoon keep only current buffer" })

		vim.keymap.set("n", "1", function() harpoon:list():select(1) end, { desc = "Select first buffer in Harpoon list" })
		vim.keymap.set("n", "2", function() harpoon:list():select(2) end, { desc = "Select second buffer in Harpoon list" })
		vim.keymap.set("n", "3", function() harpoon:list():select(3) end, { desc = "Select third buffer in Harpoon list" })
		vim.keymap.set("n", "4", function() harpoon:list():select(4) end, { desc = "Select fourth buffer in Harpoon list" })
	end,
}
