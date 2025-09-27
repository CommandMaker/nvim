return {
    -- LSP servers config
    {
        'nvim/nvim-lspconfig',
        opts = {
            lua_ls = require('plugins.lsp.lua_ls'),
            ts_ls = require('plugins.lsp.ts_ls'),
            basedpyright = {}
        },
        config = function(_, opts)
            for k, v in pairs(opts) do
                vim.lsp.config(k, v)
                vim.lsp.enable(k)
            end
        end
    },

    -- LSP servers installation
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                'basedpyright',
                'css_variables',
                'cssls',
                'cssmodules_ls',
                'docker_compose_language_service',
                'docker_language_server',
                'emmet_language_server',
                'html',
                'jsonls',
                'lua_ls',
                'marksman',
                'phpactor',
                'ts_ls',
                'ts_query_ls',
                'vimls',
                'vue_ls',
                'yamlls',
            },
        },
        dependencies = {
            { 'mason-org/mason.nvim', opts = {} },
            'neovim/nvim-lspconfig',
        },
    },

    -- Completion system
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
        version = '*',
        event = { 'InsertEnter', 'CmdlineEnter' },
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            sources = {
                default = { 'lsp', 'path', 'snippets' },
            },
        },
        opts_extend = { 'sources.default' },
    }
}
