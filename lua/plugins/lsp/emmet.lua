-- Emmet
vim.api.nvim_create_autocmd('FileType', {
    group = 'UserLSP',
    pattern = { 'css', 'eruby', 'html', 'htmldjango', 'javascriptreact', 'less', 'pug', 'sass', 'scss', 'typescriptreact', 'htmlangular' },
    desc = 'emmet_language_server',
    callback = function(event)
        local root_dir = vim.fs.find('.git', { upward = true, stop = vim.env.HOME })

        if root_dir[1] == nil then
            return
        end

        vim.lsp.start({
            name = 'emmet-language-server',
            cmd = { 'emmet-language-server', '--stdio' },
            root_dir = root_dir[1]
        })
    end
})
