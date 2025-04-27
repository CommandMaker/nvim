return {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
        settings = {
            expose_as_code_actions = {
                'all'
            },
            tsserver_file_preferences = {
                quotePreference = 'single',
                importModuleSpecifierPreference = 'non-relative'
            },
        }
    },
}
