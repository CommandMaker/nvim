return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
    },
    config = function()
        vim.lsp.enable('lua_ls')
        vim.lsp.config('lua_ls', {
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT'
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                })
            end,
            settings = {
                Lua = {}
            }
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        vim.lsp.config('html', {
            capabilities = capabilities,
            filetypes = { 'html', 'templ', 'twig', 'blade' }
        })

        vim.lsp.config('cssls', {
            capabilities = capabilities
        })

        vim.lsp.config('emmet_ls', {
            filetypes = { 'astro', 'css', 'eruby', 'html', 'htmldjango', 'javascriptreact', 'less', 'pug', 'sass', 'scss', 'svelte', 'typescriptreact', 'vue', 'twig', 'blade' }
        })

        vim.lsp.enable('phpactor')
        vim.lsp.enable('cssls')
        vim.lsp.enable('html')
        vim.lsp.enable('emmet_ls')

        vim.lsp.enable('basedpyright')
        vim.lsp.enable('bashls')
        vim.lsp.enable('docker_compose_language_service')
        vim.lsp.enable('dockerls')
        vim.lsp.enable('clangd')
        vim.lsp.enable('ts_ls', false)

        vim.lsp.config('laravel-ls', {
            cmd = { 'laravel-ls' },
            root_dir = vim.fn.getcwd(),
            filetypes = { 'php', 'blade' }
        })

        vim.lsp.enable('laravel-ls')
        vim.lsp.enable('texlab')
    end
}
