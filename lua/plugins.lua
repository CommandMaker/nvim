----------------------------------------------
--                 Plugins                  --
----------------------------------------------

local function g(p)
    return 'https://github.com/' .. p
end

vim.pack.add({
    -- Autopairs brackets, parenthesis and other
    g('windwp/nvim-autopairs'),

    -- File explorer
    g('nvim-tree/nvim-tree.lua'),
    g('nvim-tree/nvim-web-devicons'),

    -- Treesitter
    g('nvim-treesitter/nvim-treesitter'),
    g('nvim-treesitter/nvim-treesitter-textobjects'),
    g('lukas-reineke/indent-blankline.nvim'),

    -- Colorscheme
    g('bjarneo/ash.nvim'),
    g('folke/tokyonight.nvim'),

    -- Autocompletion
    {
        src = g('saghen/blink.cmp'),
        version = vim.version.range('^1')
    },
    g('rafamadriz/friendly-snippets'),

    -- LSP server management
    g('neovim/nvim-lspconfig'),
    g('mason-org/mason-lspconfig.nvim'),
    g('mason-org/mason.nvim'),

    -- File picker & more
    g('ibhagwan/fzf-lua'),

    -- Status line
    g('nvim-lualine/lualine.nvim'),

    -- Automatic license management
    g('CommandMaker/header.nvim')
})

require('plugins.colorscheme')
require('plugins.autopairs')
require('plugins.nvimtree')
require('plugins.treesitter')
require('plugins.ibl')

require('plugins.cmp')
require('plugins.lsp')
require('plugins.fzf')
require('plugins.lualine')
require('plugins.license')
