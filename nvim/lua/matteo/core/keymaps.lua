-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", {
    desc = "Exit insert mode with jk"
})

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
