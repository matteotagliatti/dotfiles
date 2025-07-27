return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "BufReadPost",
	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = false,
			keymap = {
				accept = "<Tab>", -- handled by nvim-cmp / blink.cmp
				next = "<C-n>",
				prev = "<C-p>",
			},
		},
		panel = { enabled = false },
		filetypes = {
			help = true,
		},
	},
}
