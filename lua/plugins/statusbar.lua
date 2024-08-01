local status, lualine = pcall(require, 'lualine')

if not status then
    return
end

lualine.setup {
    options = {
        icons_enabled = true,
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
        theme = 'auto',
        globalstatus = true
    },
}
