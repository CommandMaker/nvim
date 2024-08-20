local status, manager = pcall(require, 'oil')

if not status then
    return
end

manager.setup {
    delete_to_trash = true,
    view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
            return name == '.git'
        end
    }
}
