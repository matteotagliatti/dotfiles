return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "BufReadPost",
	opts = {
		suggestion = {
			auto_trigger = true,
			keymap = {
				accept = "<Tab>", -- handled by nvim-cmp / blink.cmp
				next = "<C-]>",
				prev = "<C-[>",
			},
		},
		panel = { enabled = false },
		filetypes = {
			help = true,
		},
	},
}
