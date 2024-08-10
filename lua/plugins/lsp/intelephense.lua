local util = require "plugins.lsp.util"
-- PHP
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'php' },
    group = 'UserLSP',
    desc = 'intelephense',
    callback = function()
        local root_dir = vim.fs.find({ 'composer.json', '.git' }, { upward = true, stop = vim.env.HOME, path = vim.fn.expand('%:p:h') })

        if not root_dir[1] then
            root_dir = { vim.fn.expand('%') }
        end

        vim.lsp.start({
            name = 'intelephense',
            cmd = { 'intelephense', '--stdio' },
            root_dir = vim.fs.dirname(root_dir[1])
        })
    end
})
