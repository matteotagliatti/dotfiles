return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        'javascript',
        'typescript',
        'astro',
        'json',
        'tsx',
        'html',
        'css',
        'markdown',
        'markdown_inline',
        'lua',
        'gitignore',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
