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
        }, { upward = true, stop = vim.env.HOME })

        if root_dir[1] == nil then
            root_dir = { vim.fn.expand('%') }
        end

        vim.lsp.start({
            name = 'clangd',
            cmd = { 'clangd' },
            root_dir = vim.fs.dirname(root_dir[1]),
        })
    end
})
