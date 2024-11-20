-- Create command to insert current date
vim.api.nvim_create_user_command('Today', function()
    local date = os.date('%Y-%m-%d')
    vim.api.nvim_put({date}, 'c', true, true)
end, {})

-- Create command to insert markdown frontmatter with current date
vim.api.nvim_create_user_command('Header', function()
    local date = os.date('%Y-%m-%d')
    local header = {
        '---',
        'tags:',
        'date: ' .. date,
        '---'
    }
    vim.api.nvim_put(header, 'l', true, true)
end, {})

