local status, colorscheme = pcall(require, 'tokyonight')

if not status then
    return
end

colorscheme.setup {
    style = 'night',
    light_style = 'day'
}

vim.system({ 'dark-notify' }, { stdout = vim.schedule_wrap(function (err, data)
    if err then
        return
    end

    -- io.open(vim.fn.expand('$HOME/.config/wezterm/background'), 'w+'):write(data)
    -- io.popen('tmux source-file ' .. vim.fn.expand('$HOME/.tmux.conf'))

    vim.o.background = string.gsub(data, '^%s*(.-)%s*$', '%1')
end) })
