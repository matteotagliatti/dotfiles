return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local formatting = null_ls.builtins.formatting -- to setup formatters
		-- local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		null_ls.setup({
			sources = {
				formatting.stylua,
				formatting.prettier,
				formatting.prettier.with({
					extra_filetypes = { "astro" },
				}),
				require("none-ls.diagnostics.eslint_d"),
			},
			-- format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, { desc = "[F]ormat [B]uffer" })
	end,
}
