-- CSSls
vim.api.nvim_create_autocmd('FileType', {
    desc = 'cssls',
    group = 'UserLSP',
    pattern = { 'css', 'scss', 'less' },
    callback = function()
        local root_dir = vim.fs.find({ 'package.json', '.git' }, { upward = true, stop = vim.env.HOME, path = vim.fs.dirname(vim.fn.expand('%')) })

        if root_dir[1] == nil then
            root_dir = { vim.fn.expand('%') }
        end

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        vim.lsp.start({
            name = 'cssls',
            cmd = { 'vscode-css-language-server', '--stdio' },
            root_dir = vim.fs.dirname(root_dir[1]),
            capabilities = capabilities,
            init_options = {
                provideFormatter = true
            },
            settings = {
                css = {
                    validate = true
                },
                less = {
                    validate = true
                },
                scss = {
                    validate = true
                }
            }
        })
    end
})
