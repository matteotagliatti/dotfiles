vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "jk to escape" })
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file in normal mode" })
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "save file in insert mode" })
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file in normal mode" })

-- move lines vertically
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })

-- new tab
keymap.set("n", "<C-t>", ":tabedit<Return>", { desc = "New tab" })
keymap.set("n", "<tab>", ":tabnext<Return>", { desc = "Next tab" })
keymap.set("n", "<s-tab>", ":tabprev<Return>", { desc = "Previous tab" })

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
