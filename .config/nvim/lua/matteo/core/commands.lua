local create_cmd = vim.api.nvim_create_user_command

local function open_daily_markdown(day_offset)
	-- Build YYYY-MM-DD filename relative to the current working directory.
	local timestamp = os.time() + (day_offset or 0) * 24 * 60 * 60
	local date_str = os.date("%Y-%m-%d", timestamp)
	local root = vim.loop.cwd() or vim.fn.getcwd()
	local path = root .. "/" .. date_str .. ".md"

	vim.cmd.edit(vim.fn.fnameescape(path))
end

create_cmd("Today", function()
	open_daily_markdown(0)
end, { desc = "Open today's markdown file (YYYY-MM-DD.md)" })

create_cmd("Yesterday", function()
	open_daily_markdown(-1)
end, { desc = "Open yesterday's markdown file (YYYY-MM-DD.md)" })
