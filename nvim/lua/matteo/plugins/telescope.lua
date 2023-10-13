return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim', "nvim-tree/nvim-web-devicons"},
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next -- move to next result
                    }
                }
            }
        })

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {
            desc = "Fuzzy find files in cwd"
        })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {
            desc = "Fuzzy find recent files"
        })
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {
            desc = "Find string in cwd"
        })
    end
}
