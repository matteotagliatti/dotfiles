vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Escape" })
keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Remove search highlight" })
keymap.set({ "n", "v" }, "Y", [["+y]], { desc = "Copy to system clipboard" })
keymap.set({ "n", "v" }, "P", [["+p]], { desc = "Paste from system clipboard" })
keymap.set("n", "<leader>N", function()
	local root = vim.loop.cwd() or vim.fn.getcwd()
	local note_path = root .. "/note.md"
	vim.cmd.edit(vim.fn.fnameescape(note_path))
end, { desc = "Open project note.md" })

-- buffers
keymap.set("n", "<tab>", ":bnext<Return>", { desc = "Go to next buffer" })
keymap.set("n", "<s-tab>", ":bprev<Return>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>qq", ":bdelete<Return>", { desc = "Delete buffer" })
keymap.set("n", "<leader>q!", ":bdelete!<Return>", { desc = "Delete buffer without saving" })
keymap.set("n", "<leader>qa", function()
	local current_bufnr = vim.fn.bufnr("%")
	for _, bufnr in ipairs(vim.fn.getbufinfo({ buflisted = 1 })) do
		if bufnr.bufnr ~= current_bufnr then
			vim.api.nvim_buf_delete(bufnr.bufnr, { force = true })
		end
	end
end, { desc = "Close all buffers except the current one" })

-- Diagnostics
keymap.set("n", "<leader>d", vim.diagnostic.setloclist, { desc = "Open Quicklist [D]iagnostic" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
