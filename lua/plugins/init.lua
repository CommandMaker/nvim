return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd[[colorscheme tokyonight]]
            require('plugins.colorscheme')
        end
    },
    -- File Manager
    {
        'stevearc/oil.nvim',
        lazy = false,
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        config = function ()
            require('plugins.filemanager')
        end
    },
    -- Autopair brackets, quotes, ...
    {
        'windwp/nvim-autopairs',
        lazy = false,
        config = function()
            require('nvim-autopairs').setup {}
        end
    },
    {
        'leath-dub/snipe.nvim',
        lazy = false,
        config = function()
            require('plugins.snipe')
        end
    }
}
