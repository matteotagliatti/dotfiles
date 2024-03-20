vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "jj to escape" })
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file in normal mode" })
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "save file in insert mode" })
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit in normal mode" })
keymap.set("n", "<leader>w", ":vsplit<Return>", { desc = "Vertical split window" })

-- move lines vertically
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })

-- buffers
keymap.set("n", "<tab>", ":bnext<Return>", { desc = "Go to next buffer" })
keymap.set("n", "<s-tab>", ":bprev<Return>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>q", ":bdelete<Return>", { desc = "Delete buffer" })
-- keymap.set("n", "8", ":bfirst<enter>", { desc = "Go to last buffer" })
-- keymap.set("n", "9", ":blast<enter>", { desc = "Go to first buffer" })

-- Diagnostic keymaps
keymap.set("n", "<leader>dd", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "<leader>dD", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show [D]iagnostic [E]rror messages" })
keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Today date in YYYY-MM-DD format
keymap.set("n", "<leader>dt", "i<C-R>=strftime('%Y-%m-%d')<CR>", { desc = "Insert today's date" })
