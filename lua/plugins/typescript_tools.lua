return {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
        filetypes = {
            'javascript',
            'javascriptreact',
            'typescript',
            'typescriptreact',
            'vue', -- This needed to be added.
        },
        settings = {
            expose_as_code_actions = {
                'all'
            },
            tsserver_file_preferences = {
                'javascript',
                'javascriptreact',
                'javascript.jsx',
                'typescript',
                'typescriptreact',
                'typescript.tsx',
                'vue',
                quotePreference = 'single',
                importModuleSpecifierPreference = 'non-relative'
            },
            tsserver_plugins = {
                '@vue/typescript-plugin'
            }
        }
    },
}
