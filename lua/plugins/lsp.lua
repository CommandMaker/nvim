return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
    },
    config = function()
        local lspconfig = require('lspconfig')

        lspconfig.lua_ls.setup {}
    end
}
