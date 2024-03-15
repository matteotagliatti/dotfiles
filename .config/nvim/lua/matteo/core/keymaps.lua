vim.g.mapleader = " " -- set leader key to space
local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "jj to escape" })
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file in normal mode" })
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "save file in insert mode" })
keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file in normal mode" })

-- move lines vertically
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })

-- new tab
keymap.set("n", "<C-t>", ":tabedit<Return>", { desc = "New tab" })

-- split window
keymap.set("n", "<leader>ww", ":vsplit<Return>", { desc = "Vertical split window" })
keymap.set("n", "<leader>ws", ":split<Return>", { desc = "Split window" })

-- buffers
keymap.set("n", "<tab>", ":bnext<Return>", { desc = "Go to next buffer" })
keymap.set("n", "<s-tab>", ":bprev<Return>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>q", ":bdelete<Return>", { desc = "Delete buffer" })
keymap.set("n", "td", ":bdelete<enter>", { desc = "Delete buffer" })
keymap.set("n", "tk", ":blast<enter>", { desc = "Go to first buffer" })
keymap.set("n", "tj", ":bfirst<enter>", { desc = "Go to last buffer" })
keymap.set("n", "th", ":bprev<enter>", { desc = "Go to previous buffer" })
keymap.set("n", "tl", ":bnext<enter>", { desc = "Go to next buffer" })

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
