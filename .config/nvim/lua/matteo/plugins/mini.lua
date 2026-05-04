return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({
			-- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12 (see `:help treesitter-incremental-selection`)
			mappings = {
				around_next = "aa",
				inside_next = "ii",
			},
			n_lines = 500,
		})

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Go backward/forward to a certain target with [ and ]
		require("mini.bracketed").setup()

		-- Add comments
		--
		-- - gc   - Toggle comment (like `gcip` - comment inner paragraph) for both. Normal and Visual modes
		-- - gcc  - Toggle comment for current line
		require("mini.comment").setup({})

		-- Autopairs
		require("mini.pairs").setup({})

		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
