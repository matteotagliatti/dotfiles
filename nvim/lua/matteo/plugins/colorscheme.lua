return {{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- to load this before all the other plugins
    config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
            flavour = "mocha"
        })

        -- load the colorscheme here
        vim.o.termguicolors = true
        vim.cmd.colorscheme "catppuccin"
    end
}}
