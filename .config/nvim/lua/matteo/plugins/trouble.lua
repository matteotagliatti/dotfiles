return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local t = require("trouble")

        vim.keymap.set("n", "<leader>tt", function()
            t.toggle()
        end, { desc = "Toggle Troubel" })

        vim.keymap.set("n", "<leader>tw", function()
            t.toggle("workspace_diagnostics")
        end, { desc = "[Toggle Workspace Diagnostics]" })

        vim.keymap.set("n", "<leader>td", function()
            t.toggle("document_diagnostics")
        end, { desc = "Toggle Document Diagnostics" })

        vim.keymap.set("n", "<leader>tq", function()
            t.toggle("quickfix")
        end, { desc = "Toggle Quickfix" })

        vim.keymap.set("n", "<leader>tl", function()
            t.toggle("loclist")
        end, { desc = "Toggle Location List" })

        vim.keymap.set("n", "gr", function()
            t.toggle("lsp_references")
        end, { desc = "Trouble LSP References" })
    end,
}
