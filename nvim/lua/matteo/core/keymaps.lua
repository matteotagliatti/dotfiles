-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", {
    desc = "Exit insert mode with jk"
})

-- select all
keymap.set('n', '<leader>a', 'gg<S-v>G')

-- save file with Ctrl + s
keymap.set('n', '<C-s>', ':w<CR>')
keymap.set('i', '<C-s>', '<Esc>:w<CR>')

-- quit buffer with Ctrl + q
keymap.set('n', '<C-q>', ':q<CR>')
keymap.set('i', '<C-q>', '<Esc>:q<CR>')
