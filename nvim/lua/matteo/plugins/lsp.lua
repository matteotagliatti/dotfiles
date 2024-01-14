return {
    {
      "williamboman/mason.nvim",
      lazy = false,
      config = function()
        local mason = require("mason")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        end,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      lazy = false,
      opts = {
        auto_install = true,
      },
      config = function ()
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
          -- list of servers for mason to install
          ensure_installed = {"tsserver", "lua_ls"},
          -- auto-install configured servers (with lspconfig)
          automatic_installation = true
      })
      end,
    },
    {
      "neovim/nvim-lspconfig",
      lazy = false,
      config = function()

        local lspconfig = require("lspconfig")
        lspconfig.tsserver.setup({})
        lspconfig.lua_ls.setup({})
        lspconfig.astro.setup({})
        lspconfig.tailwindcss.setup({})

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      end,
    },
  }
