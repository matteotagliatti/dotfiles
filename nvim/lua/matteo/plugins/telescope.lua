return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim', "nvim-tree/nvim-web-devicons"},
    config = function()
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
