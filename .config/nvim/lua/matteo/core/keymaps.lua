vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Escape" })
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "Save in insert mode" })
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit in normal mode" })
keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Remove search highlight" })
keymap.set("n", "<leader>w", ":vsplit<Return>", { desc = "Vertical split window" })

keymap.set("v", "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from system clipboard" })

-- buffers
keymap.set("n", "<tab>", ":bnext<Return>", { desc = "Go to next buffer" })
keymap.set("n", "<s-tab>", ":bprev<Return>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader><tab>", "<C-^>", { desc = "Go to the previously opened buffer" })
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

-- Diagnostic keymaps
keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "[D]iagnostic [P]revious message" })
keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "[D]iagnostic [N]ext message" })
keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "[D]iagnostic [E]rror message" })
keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "[D]iagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
