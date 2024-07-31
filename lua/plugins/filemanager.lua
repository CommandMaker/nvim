local status, manager = pcall(require, 'oil')

if not status then
    return
end

manager.setup {
    view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
            return vim.startswith(name, '.git')
        end
    }
}
