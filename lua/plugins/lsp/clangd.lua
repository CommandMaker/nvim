-- Clang
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
    group = 'UserLSP',
    callback = function ()
        local root_dir = vim.fs.find({
            '.clangd',
            '.clang-tidy',
            '.clang-format',
            'compile_commands.json',
            'compile_flags.txt',
            'configure.ac',
            '.git'
        }, { upward = true, limit = vim.env.HOME })

        if root_dir[1] == nil then
            return
        end

        vim.lsp.start({
            name = 'clangd',
            cmd = { 'clangd' },
            root_dir = root_dir[1],
        })
    end
})
