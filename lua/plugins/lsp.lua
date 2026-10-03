----------------------------------------------
--                LSP Servers               --
----------------------------------------------

local server_configs = {
    lua_ls = require('plugins.lsp_servers.luals'),
    vtsls = require('plugins.lsp_servers.vtsls')
}

local status, mason = pcall(require, 'mason')

if not status then
    return
end

mason.setup {}

local status, masonlsp = pcall(require, 'mason-lspconfig')

if not status then
    return
end

local ensure_installed = {
    'basedpyright',
    'clangd',
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
}

-- Minimal required servers for me to work (like when I'm at school)
local light_ensure_installed = {
    'basedpyright',
    'clangd',
    'lua_ls',
}

if vim.env.LIGHTWEIGHT ~= nil then
    ensure_installed = light_ensure_installed
end

masonlsp.setup {
    ensure_installed = ensure_installed,
    automatic_enable = {
        exclude = {
            'ts_ls' -- Disable automatic ts_ls activation to avoid conflicts with typescripttools.nvim
        }
    }
}

for k, v in pairs(server_configs) do
    vim.lsp.config(k, v)
    vim.lsp.enable(k)
end
