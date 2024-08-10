-- TypeScript, JavaScript, tsx...
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx', 'vue' },
    group = 'UserLSP',
    desc = 'typescript_language_server',
    callback = function()
        local root_dir = vim.fs.find({ 'tsconfig.json', 'jsconfig.json', 'package.json', '.git', 'node_modules' }, { upward = true, stop = vim.env.HOME })

        if root_dir[1] == nil then
            root_dir = {vim.fn.expand('%')}
        end

        vim.lsp.start({
            name = 'typescript_language_server',
            cmd = { 'typescript-language-server', '--stdio' },
            root_dir = vim.fs.dirname(root_dir[1]),
            init_options = {
                host_info = 'neovim',
                preferences = {
                    importModuleSpecifierPreference = 'non-relative',
                    quotePreference = 'single',
                    includeCompletionsForImportStatements = true
                }
            }
        })
    end
})
