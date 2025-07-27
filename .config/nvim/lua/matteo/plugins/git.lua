return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			delay = 500,
			virt_text_pos = "eol",
		},
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "<leader>gn", gitsigns.next_hunk, { desc = "[G]it [n]ext hunk" })
			map("n", "<leader>gp", gitsigns.prev_hunk, { desc = "[G]it [p]revious hunk" })

			-- Actions
			map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "[G]it [s]tage hunk" })
			map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "[G]it [S]tage buffer" })
			map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "[G]it [r]eset hunk" })
			map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "[G]it [R]eset buffer" })
			map("n", "<leader>gP", gitsigns.preview_hunk, { desc = "[G]it [p]review hunk" })
			map("n", "<leader>gd", gitsigns.diffthis, { desc = "[G]it [d]iff against index" })
			map("n", "<leader>gD", function()
				gitsigns.diffthis("@")
			end, { desc = "[G]it [D]iff against last commit" })

			-- Toggles
			map("n", "<leader>gb", gitsigns.toggle_current_line_blame, { desc = "[G]it [b]lame line" })
			map("n", "<leader>gt", gitsigns.preview_hunk_inline, { desc = "[G]it [t]oggle git show deleted" })
		end,
	},
}
