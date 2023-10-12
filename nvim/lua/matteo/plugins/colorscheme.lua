return {{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- to load this before all the other plugins
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}}
