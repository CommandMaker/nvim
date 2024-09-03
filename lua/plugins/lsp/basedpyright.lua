-- Basedpyright (Python)
vim.api.nvim_create_autocmd('FileType', {
    group = 'UserLSP',
    pattern = { 'python' },
    desc = 'basedpyright',
    callback = function()
        local root_dir = vim.fs.find({ 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', 'pyrightconfig.json', '.git' }, { upward = true, stop = vim.env.HOME, path = vim.fs.dirname(vim.fn.expand('%')) })

        if root_dir[1] == nil then
            root_dir = { vim.fn.expand('%') }
        end

        vim.lsp.start({
            name = 'basedpyright',
            cmd = { 'basedpyright-langserver', '--stdio' },
            root_dir = vim.fs.dirname(root_dir[1]),
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            settings = {
                basedpyright = {
                    analysis = {
                        autoSearchPaths = true,
                        diagnosticMode = 'openFilesOnly',
                        useLibraryCodeForTypes = true
                    }
                }
            }
        })
    end
})
