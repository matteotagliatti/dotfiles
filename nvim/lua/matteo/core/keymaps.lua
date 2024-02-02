vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- exit insert mode
keymap.set("n", "<C-s>", ":w<CR>") -- save file in normal mode
keymap.set("i", "<C-s>", "<ESC>:w<CR>") -- save file in insert mode
keymap.set("n", "<C-q>", ":q<CR>") -- quit buffer

-- move lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==")
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==")

-- new tab
keymap.set("n", "<C-t>", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>")
keymap.set("n", "<s-tab>", ":tabprev<Return>")
