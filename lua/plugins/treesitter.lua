local status, ts = pcall(require, 'nvim-treesitter.configs')

if not status then
    return
end

ts.setup {
    ensure_installed = { 'c', 'cpp', 'swift', 'html', 'css', 'javascript', 'typescript' },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}
