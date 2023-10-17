return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            actions = {
                open_file = {
                    quit_on_open = true
                }
            }
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle file explorer"
        })
    end
}