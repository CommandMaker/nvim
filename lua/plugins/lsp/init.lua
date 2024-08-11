-- Create LSP autocmd group to refresh autocmd when this file is sourced
vim.api.nvim_create_augroup('UserLSP', { clear = true })

require('plugins.lsp.global_functions')
require('plugins.lsp.emmet')
require('plugins.lsp.lua')
require('plugins.lsp.typescript')
require('plugins.lsp.intelephense')
require('plugins.lsp.basedpyright')
require('plugins.lsp.cssls')
